.class public Lcom/sshtools/common/knownhosts/X509HostKeyVerification;
.super Ljava/lang/Object;
.source "X509HostKeyVerification.java"

# interfaces
.implements Lcom/sshtools/common/knownhosts/HostKeyVerification;


# instance fields
.field params:Ljava/security/cert/PKIXParameters;


# direct methods
.method public constructor <init>(Ljava/util/Set;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/security/cert/TrustAnchor;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Ljava/security/cert/PKIXParameters;

    invoke-direct {v0, p1}, Ljava/security/cert/PKIXParameters;-><init>(Ljava/util/Set;)V

    iput-object v0, p0, Lcom/sshtools/common/knownhosts/X509HostKeyVerification;->params:Ljava/security/cert/PKIXParameters;

    .line 93
    invoke-virtual {v0, p2}, Ljava/security/cert/PKIXParameters;->setRevocationEnabled(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const-string v0, "java.home"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2f

    sget-char v2, Ljava/io/File;->separatorChar:C

    .line 75
    const-string v3, "/lib/security/cacerts"

    invoke-virtual {v3, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 78
    const-string v2, "maverick.trustedCACertsPassword"

    const-string v3, "changeit"

    invoke-static {v2, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 79
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 80
    new-instance v1, Ljava/security/cert/PKIXParameters;

    invoke-direct {v1, v0}, Ljava/security/cert/PKIXParameters;-><init>(Ljava/security/KeyStore;)V

    iput-object v1, p0, Lcom/sshtools/common/knownhosts/X509HostKeyVerification;->params:Ljava/security/cert/PKIXParameters;

    .line 81
    invoke-virtual {v1, p1}, Ljava/security/cert/PKIXParameters;->setRevocationEnabled(Z)V

    return-void
.end method

.method private validateChain([Ljava/security/cert/Certificate;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertPathValidatorException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 116
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 118
    const-string v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 119
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;

    move-result-object p1

    .line 120
    const-string v1, "PKIX"

    invoke-static {v1}, Ljava/security/cert/CertPathValidator;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertPathValidator;

    move-result-object v1

    .line 122
    iget-object v2, p0, Lcom/sshtools/common/knownhosts/X509HostKeyVerification;->params:Ljava/security/cert/PKIXParameters;

    .line 123
    invoke-virtual {v1, p1, v2}, Ljava/security/cert/CertPathValidator;->validate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;

    move-result-object p1

    check-cast p1, Ljava/security/cert/PKIXCertPathValidatorResult;

    if-eqz p1, :cond_0

    .line 126
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 128
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method


# virtual methods
.method public verifyHost(Ljava/lang/String;Lcom/sshtools/common/ssh/components/SshPublicKey;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 98
    instance-of p1, p2, Lcom/sshtools/common/ssh/components/SshX509PublicKey;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 99
    check-cast p2, Lcom/sshtools/common/ssh/components/SshX509PublicKey;

    .line 101
    :try_start_0
    invoke-interface {p2}, Lcom/sshtools/common/ssh/components/SshX509PublicKey;->getCertificateChain()[Ljava/security/cert/Certificate;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sshtools/common/knownhosts/X509HostKeyVerification;->validateChain([Ljava/security/cert/Certificate;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 103
    const-string p2, "Failed to validate certificate chain"

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p2, p1, v1}, Lcom/sshtools/common/logger/Log;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    return v0
.end method
