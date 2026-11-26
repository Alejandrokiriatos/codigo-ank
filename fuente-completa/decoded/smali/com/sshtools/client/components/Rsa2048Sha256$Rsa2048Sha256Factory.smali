.class public Lcom/sshtools/client/components/Rsa2048Sha256$Rsa2048Sha256Factory;
.super Ljava/lang/Object;
.source "Rsa2048Sha256.java"

# interfaces
.implements Lcom/sshtools/client/SshKeyExchangeClientFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/client/components/Rsa2048Sha256;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Rsa2048Sha256Factory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sshtools/client/SshKeyExchangeClientFactory<",
        "Lcom/sshtools/client/components/Rsa2048Sha256;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create()Lcom/sshtools/client/components/Rsa2048Sha256;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    new-instance v0, Lcom/sshtools/client/components/Rsa2048Sha256;

    invoke-direct {v0}, Lcom/sshtools/client/components/Rsa2048Sha256;-><init>()V

    return-object v0
.end method

.method public bridge synthetic create()Lcom/sshtools/common/ssh/components/Component;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    invoke-virtual {p0}, Lcom/sshtools/client/components/Rsa2048Sha256$Rsa2048Sha256Factory;->create()Lcom/sshtools/client/components/Rsa2048Sha256;

    move-result-object v0

    return-object v0
.end method

.method public getKeys()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    .line 79
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "rsa2048-sha256"

    aput-object v2, v0, v1

    return-object v0
.end method
