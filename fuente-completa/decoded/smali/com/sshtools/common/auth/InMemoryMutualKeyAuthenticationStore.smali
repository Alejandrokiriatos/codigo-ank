.class public Lcom/sshtools/common/auth/InMemoryMutualKeyAuthenticationStore;
.super Ljava/lang/Object;
.source "InMemoryMutualKeyAuthenticationStore.java"

# interfaces
.implements Lcom/sshtools/common/auth/MutualKeyAuthenticatonStore;


# instance fields
.field privateKeys:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sshtools/common/ssh/components/SshKeyPair;",
            ">;"
        }
    .end annotation
.end field

.field publicKeys:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sshtools/common/ssh/components/SshPublicKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sshtools/common/auth/InMemoryMutualKeyAuthenticationStore;->privateKeys:Ljava/util/Map;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sshtools/common/auth/InMemoryMutualKeyAuthenticationStore;->publicKeys:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addKey(Ljava/lang/String;Lcom/sshtools/common/ssh/components/SshKeyPair;Lcom/sshtools/common/ssh/components/SshPublicKey;)Lcom/sshtools/common/auth/InMemoryMutualKeyAuthenticationStore;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/sshtools/common/auth/InMemoryMutualKeyAuthenticationStore;->privateKeys:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object p2, p0, Lcom/sshtools/common/auth/InMemoryMutualKeyAuthenticationStore;->publicKeys:Ljava/util/Map;

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public getPrivateKey(Lcom/sshtools/common/ssh/SshConnection;)Lcom/sshtools/common/ssh/components/SshKeyPair;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/sshtools/common/auth/InMemoryMutualKeyAuthenticationStore;->privateKeys:Ljava/util/Map;

    invoke-interface {p1}, Lcom/sshtools/common/ssh/SshConnection;->getUsername()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sshtools/common/ssh/components/SshKeyPair;

    return-object p1
.end method

.method public getPublicKey(Lcom/sshtools/common/ssh/SshConnection;)Lcom/sshtools/common/ssh/components/SshPublicKey;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/sshtools/common/auth/InMemoryMutualKeyAuthenticationStore;->publicKeys:Ljava/util/Map;

    invoke-interface {p1}, Lcom/sshtools/common/ssh/SshConnection;->getUsername()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sshtools/common/ssh/components/SshPublicKey;

    return-object p1
.end method
