.class public Lcom/silkimen/http/TLSConfiguration;
.super Ljava/lang/Object;
.source "TLSConfiguration.java"


# instance fields
.field private blacklistedProtocols:[Ljava/lang/String;

.field private hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field private keyManagers:[Ljavax/net/ssl/KeyManager;

.field private socketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field private trustManagers:[Ljavax/net/ssl/TrustManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/silkimen/http/TLSConfiguration;->trustManagers:[Ljavax/net/ssl/TrustManager;

    .line 17
    iput-object v0, p0, Lcom/silkimen/http/TLSConfiguration;->keyManagers:[Ljavax/net/ssl/KeyManager;

    .line 18
    iput-object v0, p0, Lcom/silkimen/http/TLSConfiguration;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    const/4 v0, 0x0

    .line 19
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/silkimen/http/TLSConfiguration;->blacklistedProtocols:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/silkimen/http/TLSConfiguration;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public getTLSSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/silkimen/http/TLSConfiguration;->socketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_0

    return-object v0

    .line 52
    :cond_0
    :try_start_0
    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 54
    iget-object v1, p0, Lcom/silkimen/http/TLSConfiguration;->keyManagers:[Ljavax/net/ssl/KeyManager;

    iget-object v2, p0, Lcom/silkimen/http/TLSConfiguration;->trustManagers:[Ljavax/net/ssl/TrustManager;

    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 55
    new-instance v1, Lcom/silkimen/http/TLSSocketFactory;

    iget-object v2, p0, Lcom/silkimen/http/TLSConfiguration;->blacklistedProtocols:[Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/silkimen/http/TLSSocketFactory;-><init>(Ljavax/net/ssl/SSLContext;[Ljava/lang/String;)V

    iput-object v1, p0, Lcom/silkimen/http/TLSConfiguration;->socketFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    .line 59
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Security exception occured while configuring TLS context"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 61
    throw v1
.end method

.method public setBlacklistedProtocols([Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/silkimen/http/TLSConfiguration;->blacklistedProtocols:[Ljava/lang/String;

    const/4 p1, 0x0

    .line 39
    iput-object p1, p0, Lcom/silkimen/http/TLSConfiguration;->socketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-void
.end method

.method public setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/silkimen/http/TLSConfiguration;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-void
.end method

.method public setKeyManagers([Ljavax/net/ssl/KeyManager;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/silkimen/http/TLSConfiguration;->keyManagers:[Ljavax/net/ssl/KeyManager;

    const/4 p1, 0x0

    .line 29
    iput-object p1, p0, Lcom/silkimen/http/TLSConfiguration;->socketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-void
.end method

.method public setTrustManagers([Ljavax/net/ssl/TrustManager;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/silkimen/http/TLSConfiguration;->trustManagers:[Ljavax/net/ssl/TrustManager;

    const/4 p1, 0x0

    .line 34
    iput-object p1, p0, Lcom/silkimen/http/TLSConfiguration;->socketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-void
.end method
