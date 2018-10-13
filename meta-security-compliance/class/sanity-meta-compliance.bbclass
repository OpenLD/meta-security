addhandler compliance_bbappend_distrocheck
compliance_bbappend_distrocheck[eventmask] = "bb.event.SanityCheck"
python compliance_bbappend_distrocheck() {
    skip_check = e.data.getVar('SKIP_META_SECURITY_COMPLIANCE_SANITY_CHECK') == "1"
    if 'test-security-compliance' not in e.data.getVar('DISTRO_FEATURES').split() and not skip_check:
        bb.warn("You have included the meta-security-compliance layer, but \
'test-security-compliance' has not been enabled in your DISTRO_FEATURES. Some bbappend files \
may not take effect. See the meta-security-compliance README for details on enabling \
meta-compliance support.")
}
