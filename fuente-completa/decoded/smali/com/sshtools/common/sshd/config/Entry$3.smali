.class Lcom/sshtools/common/sshd/config/Entry$3;
.super Ljava/lang/Object;
.source "Entry.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sshtools/common/sshd/config/Entry;->findKeyValueEntry(Ljava/lang/String;)Lcom/sshtools/common/sshd/config/SshdConfigKeyValueEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/sshtools/common/sshd/config/SshdConfigKeyValueEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sshtools/common/sshd/config/Entry;

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sshtools/common/sshd/config/Entry;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 102
    iput-object p1, p0, Lcom/sshtools/common/sshd/config/Entry$3;->this$0:Lcom/sshtools/common/sshd/config/Entry;

    iput-object p2, p0, Lcom/sshtools/common/sshd/config/Entry$3;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/sshtools/common/sshd/config/SshdConfigKeyValueEntry;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/sshtools/common/sshd/config/Entry$3;->this$0:Lcom/sshtools/common/sshd/config/Entry;

    iget-object v0, v0, Lcom/sshtools/common/sshd/config/Entry;->keyEntries:Ljava/util/Map;

    iget-object v1, p0, Lcom/sshtools/common/sshd/config/Entry$3;->val$key:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sshtools/common/sshd/config/SshdConfigFileEntry;

    .line 107
    instance-of v1, v0, Lcom/sshtools/common/sshd/config/SshdConfigKeyValueEntry;

    if-eqz v1, :cond_0

    .line 110
    check-cast v0, Lcom/sshtools/common/sshd/config/SshdConfigKeyValueEntry;

    return-object v0

    .line 108
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object v1, p0, Lcom/sshtools/common/sshd/config/Entry$3;->val$key:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Value with key `%s` is not Key Value entry of type SshdConfigKeyValueEntry"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 102
    invoke-virtual {p0}, Lcom/sshtools/common/sshd/config/Entry$3;->call()Lcom/sshtools/common/sshd/config/SshdConfigKeyValueEntry;

    move-result-object v0

    return-object v0
.end method
