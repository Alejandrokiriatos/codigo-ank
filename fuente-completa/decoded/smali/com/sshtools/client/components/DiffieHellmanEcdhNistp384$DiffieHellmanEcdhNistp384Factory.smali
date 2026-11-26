.class public Lcom/sshtools/client/components/DiffieHellmanEcdhNistp384$DiffieHellmanEcdhNistp384Factory;
.super Ljava/lang/Object;
.source "DiffieHellmanEcdhNistp384.java"

# interfaces
.implements Lcom/sshtools/client/SshKeyExchangeClientFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/client/components/DiffieHellmanEcdhNistp384;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DiffieHellmanEcdhNistp384Factory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sshtools/client/SshKeyExchangeClientFactory<",
        "Lcom/sshtools/client/components/DiffieHellmanEcdhNistp384;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create()Lcom/sshtools/client/components/DiffieHellmanEcdhNistp384;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    new-instance v0, Lcom/sshtools/client/components/DiffieHellmanEcdhNistp384;

    invoke-direct {v0}, Lcom/sshtools/client/components/DiffieHellmanEcdhNistp384;-><init>()V

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

    .line 35
    invoke-virtual {p0}, Lcom/sshtools/client/components/DiffieHellmanEcdhNistp384$DiffieHellmanEcdhNistp384Factory;->create()Lcom/sshtools/client/components/DiffieHellmanEcdhNistp384;

    move-result-object v0

    return-object v0
.end method

.method public getKeys()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    .line 43
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "ecdh-sha2-nistp384"

    aput-object v2, v0, v1

    return-object v0
.end method
