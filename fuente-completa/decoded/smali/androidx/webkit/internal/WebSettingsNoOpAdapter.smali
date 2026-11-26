.class public Landroidx/webkit/internal/WebSettingsNoOpAdapter;
.super Landroidx/webkit/internal/WebSettingsAdapter;
.source "WebSettingsNoOpAdapter.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, v0}, Landroidx/webkit/internal/WebSettingsAdapter;-><init>(Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;)V

    return-void
.end method


# virtual methods
.method public getAttributionRegistrationBehavior()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getBackForwardCacheEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDisabledActionModeMenuItems()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getEnterpriseAuthenticationAppLinkPolicyEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getForceDark()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getForceDarkStrategy()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getHasEnrolledInstrumentEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getOffscreenPreRaster()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPaymentRequestEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getRequestedWithHeaderOriginAllowList()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 164
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getSafeBrowsingEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getSpeculativeLoadingStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getUserAgentMetadata()Landroidx/webkit/UserAgentMetadata;
    .locals 1

    .line 183
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    .line 182
    invoke-static {v0}, Landroidx/webkit/internal/UserAgentMetadataInternal;->getUserAgentMetadataFromMap(Ljava/util/Map;)Landroidx/webkit/UserAgentMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getWebAuthenticationSupport()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getWebViewMediaIntegrityApiStatus()Landroidx/webkit/WebViewMediaIntegrityApiStatusConfig;
    .locals 2

    .line 227
    new-instance v0, Landroidx/webkit/WebViewMediaIntegrityApiStatusConfig$Builder;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroidx/webkit/WebViewMediaIntegrityApiStatusConfig$Builder;-><init>(I)V

    .line 229
    invoke-virtual {v0}, Landroidx/webkit/WebViewMediaIntegrityApiStatusConfig$Builder;->build()Landroidx/webkit/WebViewMediaIntegrityApiStatusConfig;

    move-result-object v0

    return-object v0
.end method

.method public isAlgorithmicDarkeningAllowed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setAlgorithmicDarkeningAllowed(Z)V
    .locals 0

    return-void
.end method

.method public setAttributionRegistrationBehavior(I)V
    .locals 0

    return-void
.end method

.method public setBackForwardCacheEnabled(Z)V
    .locals 0

    return-void
.end method

.method public setDisabledActionModeMenuItems(I)V
    .locals 0

    return-void
.end method

.method public setEnterpriseAuthenticationAppLinkPolicyEnabled(Z)V
    .locals 0

    return-void
.end method

.method public setForceDark(I)V
    .locals 0

    return-void
.end method

.method public setForceDarkStrategy(I)V
    .locals 0

    return-void
.end method

.method public setHasEnrolledInstrumentEnabled(Z)V
    .locals 0

    return-void
.end method

.method public setOffscreenPreRaster(Z)V
    .locals 0

    return-void
.end method

.method public setPaymentRequestEnabled(Z)V
    .locals 0

    return-void
.end method

.method public setRequestedWithHeaderOriginAllowList(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public setSafeBrowsingEnabled(Z)V
    .locals 0

    return-void
.end method

.method public setSpeculativeLoadingStatus(I)V
    .locals 0

    return-void
.end method

.method public setUserAgentMetadata(Landroidx/webkit/UserAgentMetadata;)V
    .locals 0

    return-void
.end method

.method public setWebAuthenticationSupport(I)V
    .locals 0

    return-void
.end method

.method public setWebViewMediaIntegrityApiStatus(Landroidx/webkit/WebViewMediaIntegrityApiStatusConfig;)V
    .locals 0

    return-void
.end method
