.class Lcom/sshtools/common/sshd/config/Entry$10;
.super Ljava/lang/Object;
.source "Entry.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sshtools/common/sshd/config/Entry;->deleteEntry(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sshtools/common/sshd/config/Entry;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sshtools/common/sshd/config/Entry;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 223
    iput-object p1, p0, Lcom/sshtools/common/sshd/config/Entry$10;->this$0:Lcom/sshtools/common/sshd/config/Entry;

    iput-object p2, p0, Lcom/sshtools/common/sshd/config/Entry$10;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/sshtools/common/sshd/config/Entry$10;->val$value:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 223
    invoke-virtual {p0}, Lcom/sshtools/common/sshd/config/Entry$10;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 227
    iget-object v0, p0, Lcom/sshtools/common/sshd/config/Entry$10;->this$0:Lcom/sshtools/common/sshd/config/Entry;

    iget-object v1, p0, Lcom/sshtools/common/sshd/config/Entry$10;->val$key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sshtools/common/sshd/config/Entry;->findEntryIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    .line 232
    iget-object v1, p0, Lcom/sshtools/common/sshd/config/Entry$10;->this$0:Lcom/sshtools/common/sshd/config/Entry;

    invoke-virtual {v1}, Lcom/sshtools/common/sshd/config/Entry;->getKeyEntriesOrderedMap()Lcom/sshtools/common/sshd/config/ListOrderedMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sshtools/common/sshd/config/ListOrderedMap;->getValue(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sshtools/common/sshd/config/SshdConfigFileEntry;

    .line 233
    invoke-virtual {v1}, Lcom/sshtools/common/sshd/config/SshdConfigFileEntry;->getValue()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sshtools/common/sshd/config/Entry$10;->val$value:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 234
    iget-object v2, p0, Lcom/sshtools/common/sshd/config/Entry$10;->this$0:Lcom/sshtools/common/sshd/config/Entry;

    invoke-virtual {v2}, Lcom/sshtools/common/sshd/config/Entry;->getKeyEntriesOrderedMap()Lcom/sshtools/common/sshd/config/ListOrderedMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sshtools/common/sshd/config/ListOrderedMap;->removeIndex(I)V

    .line 236
    invoke-virtual {v1}, Lcom/sshtools/common/sshd/config/SshdConfigFileEntry;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 237
    iget-object v2, p0, Lcom/sshtools/common/sshd/config/Entry$10;->this$0:Lcom/sshtools/common/sshd/config/Entry;

    invoke-virtual {v2}, Lcom/sshtools/common/sshd/config/Entry;->getKeyEntriesOrderedMap()Lcom/sshtools/common/sshd/config/ListOrderedMap;

    move-result-object v2

    iget-object v4, p0, Lcom/sshtools/common/sshd/config/Entry$10;->val$key:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/sshtools/common/sshd/config/SshdConfigFileEntry;->getNext()Lcom/sshtools/common/sshd/config/SshdConfigFileEntry;

    move-result-object v1

    invoke-virtual {v2, v0, v4, v1}, Lcom/sshtools/common/sshd/config/ListOrderedMap;->put(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 240
    :cond_0
    move-object v0, v1

    check-cast v0, Lcom/sshtools/common/sshd/config/SshdConfigKeyValueEntry;

    .line 241
    :goto_0
    invoke-virtual {v1}, Lcom/sshtools/common/sshd/config/SshdConfigFileEntry;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 242
    invoke-virtual {v1}, Lcom/sshtools/common/sshd/config/SshdConfigFileEntry;->getNext()Lcom/sshtools/common/sshd/config/SshdConfigFileEntry;

    move-result-object v1

    .line 243
    invoke-virtual {v1}, Lcom/sshtools/common/sshd/config/SshdConfigFileEntry;->getValue()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/sshtools/common/sshd/config/Entry$10;->val$value:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 244
    invoke-virtual {v1}, Lcom/sshtools/common/sshd/config/SshdConfigFileEntry;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 245
    invoke-virtual {v1}, Lcom/sshtools/common/sshd/config/SshdConfigFileEntry;->getNext()Lcom/sshtools/common/sshd/config/SshdConfigFileEntry;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sshtools/common/sshd/config/SshdConfigKeyValueEntry;->setNext(Lcom/sshtools/common/sshd/config/SshdConfigFileEntry;)V

    goto :goto_1

    .line 247
    :cond_1
    invoke-virtual {v0, v3}, Lcom/sshtools/common/sshd/config/SshdConfigKeyValueEntry;->setNext(Lcom/sshtools/common/sshd/config/SshdConfigFileEntry;)V

    goto :goto_1

    .line 251
    :cond_2
    move-object v0, v1

    check-cast v0, Lcom/sshtools/common/sshd/config/SshdConfigKeyValueEntry;

    goto :goto_0

    :cond_3
    :goto_1
    return-object v3

    .line 229
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object v1, p0, Lcom/sshtools/common/sshd/config/Entry$10;->val$key:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Entry with key `%s` not found."

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
