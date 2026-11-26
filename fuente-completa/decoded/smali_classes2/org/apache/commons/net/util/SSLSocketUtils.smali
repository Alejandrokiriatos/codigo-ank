.class public Lorg/apache/commons/net/util/SSLSocketUtils;
.super Ljava/lang/Object;
.source "SSLSocketUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enableEndpointNameVerification(Ljavax/net/ssl/SSLSocket;)Z
    .locals 2

    .line 38
    invoke-virtual {p0}, Ljavax/net/ssl/SSLSocket;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v0

    .line 39
    const-string v1, "HTTPS"

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLParameters;->setEndpointIdentificationAlgorithm(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0, v0}, Ljavax/net/ssl/SSLSocket;->setSSLParameters(Ljavax/net/ssl/SSLParameters;)V

    const/4 p0, 0x1

    return p0
.end method
