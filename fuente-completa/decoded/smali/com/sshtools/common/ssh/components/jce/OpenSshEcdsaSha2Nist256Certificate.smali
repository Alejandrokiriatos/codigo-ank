.class public Lcom/sshtools/common/ssh/components/jce/OpenSshEcdsaSha2Nist256Certificate;
.super Lcom/sshtools/common/ssh/components/jce/OpenSshEcdsaCertificate;
.source "OpenSshEcdsaSha2Nist256Certificate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sshtools/common/ssh/components/jce/OpenSshEcdsaSha2Nist256Certificate$OpenSshEcdsaSha2Nist256CertificateFactory;
    }
.end annotation


# static fields
.field public static final CERT_TYPE:Ljava/lang/String; = "ecdsa-sha2-nistp256-cert-v01@openssh.com"


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 47
    const-string v0, "SHA256withECDSA"

    const-string v1, "secp256r1"

    const-string v2, "ecdsa-sha2-nistp256-cert-v01@openssh.com"

    invoke-direct {p0, v2, v0, v1}, Lcom/sshtools/common/ssh/components/jce/OpenSshEcdsaCertificate;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getPriority()I
    .locals 1

    .line 51
    invoke-super {p0}, Lcom/sshtools/common/ssh/components/jce/OpenSshEcdsaCertificate;->getPriority()I

    move-result v0

    add-int/lit8 v0, v0, 0x64

    return v0
.end method
