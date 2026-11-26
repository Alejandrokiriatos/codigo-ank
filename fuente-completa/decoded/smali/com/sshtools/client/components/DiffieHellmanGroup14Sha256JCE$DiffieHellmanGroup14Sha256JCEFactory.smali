.class public Lcom/sshtools/client/components/DiffieHellmanGroup14Sha256JCE$DiffieHellmanGroup14Sha256JCEFactory;
.super Ljava/lang/Object;
.source "DiffieHellmanGroup14Sha256JCE.java"

# interfaces
.implements Lcom/sshtools/client/SshKeyExchangeClientFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/client/components/DiffieHellmanGroup14Sha256JCE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DiffieHellmanGroup14Sha256JCEFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sshtools/client/SshKeyExchangeClientFactory<",
        "Lcom/sshtools/client/components/DiffieHellmanGroup14Sha256JCE;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create()Lcom/sshtools/client/components/DiffieHellmanGroup14Sha256JCE;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    new-instance v0, Lcom/sshtools/client/components/DiffieHellmanGroup14Sha256JCE;

    invoke-direct {v0}, Lcom/sshtools/client/components/DiffieHellmanGroup14Sha256JCE;-><init>()V

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

    .line 44
    invoke-virtual {p0}, Lcom/sshtools/client/components/DiffieHellmanGroup14Sha256JCE$DiffieHellmanGroup14Sha256JCEFactory;->create()Lcom/sshtools/client/components/DiffieHellmanGroup14Sha256JCE;

    move-result-object v0

    return-object v0
.end method

.method public getKeys()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    .line 52
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "diffie-hellman-group14-sha256"

    aput-object v2, v0, v1

    return-object v0
.end method
