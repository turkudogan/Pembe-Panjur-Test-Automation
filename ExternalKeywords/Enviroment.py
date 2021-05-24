def getBaseURL(env):
    if env == 'test':
        domain = 'sot-ui-hf.apps.mbt.vodafone.local'
    return 'http://' + domain
