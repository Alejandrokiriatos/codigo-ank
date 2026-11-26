.class public Lcom/sshtools/common/publickey/NamedCertificateExtension;
.super Lcom/sshtools/common/publickey/CertificateExtension;
.source "NamedCertificateExtension.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/sshtools/common/publickey/CertificateExtension;-><init>()V

    .line 27
    invoke-virtual {p0, p1}, Lcom/sshtools/common/publickey/NamedCertificateExtension;->setName(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0, p2}, Lcom/sshtools/common/publickey/NamedCertificateExtension;->setKnown(Z)V

    return-void
.end method
