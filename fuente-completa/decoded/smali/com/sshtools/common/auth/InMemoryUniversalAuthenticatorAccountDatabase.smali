.class public Lcom/sshtools/common/auth/InMemoryUniversalAuthenticatorAccountDatabase;
.super Ljava/lang/Object;
.source "InMemoryUniversalAuthenticatorAccountDatabase.java"

# interfaces
.implements Lcom/sshtools/common/auth/UniversalAuthenticatorAccountDatabase;


# instance fields
.field usernameToGatewayAccounts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sshtools/common/auth/InMemoryUniversalAuthenticatorAccountDatabase;->usernameToGatewayAccounts:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getAccounts(Ljava/lang/String;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/sshtools/common/auth/InMemoryUniversalAuthenticatorAccountDatabase;->usernameToGatewayAccounts:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    return-object p1
.end method

.method public mapUser(Ljava/lang/String;Ljava/lang/String;)Lcom/sshtools/common/auth/InMemoryUniversalAuthenticatorAccountDatabase;
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/sshtools/common/auth/InMemoryUniversalAuthenticatorAccountDatabase;->usernameToGatewayAccounts:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 38
    iget-object v1, p0, Lcom/sshtools/common/auth/InMemoryUniversalAuthenticatorAccountDatabase;->usernameToGatewayAccounts:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
