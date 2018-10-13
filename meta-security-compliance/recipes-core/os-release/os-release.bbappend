require ${@bb.utils.contains('DISTRO_FEATURES', 'test-security-compliance', 'security-compliance.inc', '', d)}
