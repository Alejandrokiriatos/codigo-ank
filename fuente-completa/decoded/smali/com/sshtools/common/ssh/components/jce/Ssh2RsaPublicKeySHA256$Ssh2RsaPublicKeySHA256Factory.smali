.class public Lcom/sshtools/common/ssh/components/jce/Ssh2RsaPublicKeySHA256$Ssh2RsaPublicKeySHA256Factory;
.super Ljava/lang/Object;
.source "Ssh2RsaPublicKeySHA256.java"

# interfaces
.implements Lcom/sshtools/common/ssh/components/SshPublicKeyFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/common/ssh/components/jce/Ssh2RsaPublicKeySHA256;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Ssh2RsaPublicKeySHA256Factory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sshtools/common/ssh/components/SshPublicKeyFactory<",
        "Lcom/sshtools/common/ssh/components/jce/Ssh2RsaPublicKeySHA256;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
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

    .line 39
    invoke-virtual {p0}, Lcom/sshtools/common/ssh/components/jce/Ssh2RsaPublicKeySHA256$Ssh2RsaPublicKeySHA256Factory;->create()Lcom/sshtools/common/ssh/components/jce/Ssh2RsaPublicKeySHA256;

    move-result-object v0

    return-object v0
.end method

.method public create()Lcom/sshtools/common/ssh/components/jce/Ssh2RsaPublicKeySHA256;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    new-instance v0, Lcom/sshtools/common/ssh/components/jce/Ssh2RsaPublicKeySHA256;

    invoke-direct {v0}, Lcom/sshtools/common/ssh/components/jce/Ssh2RsaPublicKeySHA256;-><init>()V

    return-object v0
.end method

.method public getKeys()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    .line 48
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "rsa-sha2-256"

    aput-object v2, v0, v1

    return-object v0
.end method
