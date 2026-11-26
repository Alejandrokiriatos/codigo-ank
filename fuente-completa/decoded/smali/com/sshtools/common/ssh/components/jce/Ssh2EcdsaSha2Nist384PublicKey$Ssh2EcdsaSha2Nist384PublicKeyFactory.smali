.class public Lcom/sshtools/common/ssh/components/jce/Ssh2EcdsaSha2Nist384PublicKey$Ssh2EcdsaSha2Nist384PublicKeyFactory;
.super Ljava/lang/Object;
.source "Ssh2EcdsaSha2Nist384PublicKey.java"

# interfaces
.implements Lcom/sshtools/common/ssh/components/SshPublicKeyFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/common/ssh/components/jce/Ssh2EcdsaSha2Nist384PublicKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Ssh2EcdsaSha2Nist384PublicKeyFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sshtools/common/ssh/components/SshPublicKeyFactory<",
        "Lcom/sshtools/common/ssh/components/jce/Ssh2EcdsaSha2Nist384PublicKey;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic create()Lcom/sshtools/common/ssh/components/Component;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    invoke-virtual {p0}, Lcom/sshtools/common/ssh/components/jce/Ssh2EcdsaSha2Nist384PublicKey$Ssh2EcdsaSha2Nist384PublicKeyFactory;->create()Lcom/sshtools/common/ssh/components/jce/Ssh2EcdsaSha2Nist384PublicKey;

    move-result-object v0

    return-object v0
.end method

.method public create()Lcom/sshtools/common/ssh/components/jce/Ssh2EcdsaSha2Nist384PublicKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    new-instance v0, Lcom/sshtools/common/ssh/components/jce/Ssh2EcdsaSha2Nist384PublicKey;

    invoke-direct {v0}, Lcom/sshtools/common/ssh/components/jce/Ssh2EcdsaSha2Nist384PublicKey;-><init>()V

    return-object v0
.end method

.method public getKeys()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    .line 42
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "ecdsa-sha2-nistp384"

    aput-object v2, v0, v1

    return-object v0
.end method
