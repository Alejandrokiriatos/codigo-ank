.class public Lcom/sshtools/common/ssh/components/jce/Ssh2RsaPublicKeySHA512;
.super Lcom/sshtools/common/ssh/components/jce/Ssh2RsaPublicKey;
.source "Ssh2RsaPublicKeySHA512.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sshtools/common/ssh/components/jce/Ssh2RsaPublicKeySHA512$Ssh2RsaPublicKeySHA512Factory;
    }
.end annotation


# static fields
.field private static final ALGORITHM:Ljava/lang/String; = "rsa-sha2-512"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/sshtools/common/ssh/components/jce/Ssh2RsaPublicKey;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/sshtools/common/ssh/components/SshRsaPublicKey;)V
    .locals 0

    .line 66
    invoke-interface {p1}, Lcom/sshtools/common/ssh/components/SshRsaPublicKey;->getJCEPublicKey()Ljava/security/PublicKey;

    move-result-object p1

    check-cast p1, Ljava/security/interfaces/RSAPublicKey;

    invoke-direct {p0, p1}, Lcom/sshtools/common/ssh/components/jce/Ssh2RsaPublicKeySHA512;-><init>(Ljava/security/interfaces/RSAPublicKey;)V

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/sshtools/common/ssh/components/jce/Ssh2RsaPublicKey;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-void
.end method

.method public constructor <init>(Ljava/security/interfaces/RSAPublicKey;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/sshtools/common/ssh/components/jce/Ssh2RsaPublicKey;-><init>(Ljava/security/interfaces/RSAPublicKey;)V

    return-void
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .line 85
    const-string v0, "rsa-sha2-512"

    return-object v0
.end method

.method public getEncodingAlgorithm()Ljava/lang/String;
    .locals 1

    .line 89
    const-string v0, "ssh-rsa"

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    const/16 v0, 0x898

    return v0
.end method

.method public getSecurityLevel()Lcom/sshtools/common/ssh/SecurityLevel;
    .locals 1

    .line 70
    sget-object v0, Lcom/sshtools/common/ssh/SecurityLevel;->STRONG:Lcom/sshtools/common/ssh/SecurityLevel;

    return-object v0
.end method

.method public getSigningAlgorithm()Ljava/lang/String;
    .locals 1

    .line 80
    const-string v0, "rsa-sha2-512"

    return-object v0
.end method
