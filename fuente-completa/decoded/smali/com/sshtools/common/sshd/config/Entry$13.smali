.class Lcom/sshtools/common/sshd/config/Entry$13;
.super Ljava/lang/Object;
.source "Entry.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sshtools/common/sshd/config/Entry;->entryMatches(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/Boolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sshtools/common/sshd/config/Entry;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$patterns:Ljava/util/Collection;


# direct methods
.method constructor <init>(Lcom/sshtools/common/sshd/config/Entry;Ljava/lang/String;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 338
    iput-object p1, p0, Lcom/sshtools/common/sshd/config/Entry$13;->this$0:Lcom/sshtools/common/sshd/config/Entry;

    iput-object p2, p0, Lcom/sshtools/common/sshd/config/Entry$13;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/sshtools/common/sshd/config/Entry$13;->val$patterns:Ljava/util/Collection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 342
    iget-object v0, p0, Lcom/sshtools/common/sshd/config/Entry$13;->this$0:Lcom/sshtools/common/sshd/config/Entry;

    invoke-virtual {v0}, Lcom/sshtools/common/sshd/config/Entry;->getKeyEntries()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/sshtools/common/sshd/config/Entry$13;->val$key:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sshtools/common/sshd/config/SshdConfigKeyValueEntry;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 345
    invoke-virtual {v0}, Lcom/sshtools/common/sshd/config/SshdConfigKeyValueEntry;->getValueParts()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 347
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 348
    iget-object v5, p0, Lcom/sshtools/common/sshd/config/Entry$13;->val$patterns:Ljava/util/Collection;

    invoke-static {v5, v4}, Lcom/sshtools/common/publickey/authorized/Patterns;->matchesWithCIDR(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 349
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 354
    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 338
    invoke-virtual {p0}, Lcom/sshtools/common/sshd/config/Entry$13;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
