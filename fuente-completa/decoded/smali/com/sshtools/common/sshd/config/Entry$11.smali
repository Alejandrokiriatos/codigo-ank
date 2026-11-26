.class Lcom/sshtools/common/sshd/config/Entry$11;
.super Ljava/lang/Object;
.source "Entry.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sshtools/common/sshd/config/Entry;->addEntry(ILcom/sshtools/common/sshd/config/SshdConfigFileEntry;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sshtools/common/sshd/config/Entry;

.field final synthetic val$index:I

.field final synthetic val$sshdConfigFileEntry:Lcom/sshtools/common/sshd/config/SshdConfigFileEntry;


# direct methods
.method constructor <init>(Lcom/sshtools/common/sshd/config/Entry;Lcom/sshtools/common/sshd/config/SshdConfigFileEntry;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 273
    iput-object p1, p0, Lcom/sshtools/common/sshd/config/Entry$11;->this$0:Lcom/sshtools/common/sshd/config/Entry;

    iput-object p2, p0, Lcom/sshtools/common/sshd/config/Entry$11;->val$sshdConfigFileEntry:Lcom/sshtools/common/sshd/config/SshdConfigFileEntry;

    iput p3, p0, Lcom/sshtools/common/sshd/config/Entry$11;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Integer;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 277
    iget-object v0, p0, Lcom/sshtools/common/sshd/config/Entry$11;->this$0:Lcom/sshtools/common/sshd/config/Entry;

    iget-object v1, p0, Lcom/sshtools/common/sshd/config/Entry$11;->val$sshdConfigFileEntry:Lcom/sshtools/common/sshd/config/SshdConfigFileEntry;

    invoke-static {v0, v1}, Lcom/sshtools/common/sshd/config/Entry;->-$$Nest$mresolveKey(Lcom/sshtools/common/sshd/config/Entry;Lcom/sshtools/common/sshd/config/SshdConfigFileEntry;)Ljava/lang/String;

    move-result-object v0

    .line 279
    iget-object v1, p0, Lcom/sshtools/common/sshd/config/Entry$11;->this$0:Lcom/sshtools/common/sshd/config/Entry;

    iget-object v1, v1, Lcom/sshtools/common/sshd/config/Entry;->keyEntries:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 280
    iget-object v1, p0, Lcom/sshtools/common/sshd/config/Entry$11;->this$0:Lcom/sshtools/common/sshd/config/Entry;

    invoke-virtual {v1}, Lcom/sshtools/common/sshd/config/Entry;->getKeyEntriesOrderedMap()Lcom/sshtools/common/sshd/config/ListOrderedMap;

    move-result-object v1

    iget-object v2, p0, Lcom/sshtools/common/sshd/config/Entry$11;->val$sshdConfigFileEntry:Lcom/sshtools/common/sshd/config/SshdConfigFileEntry;

    invoke-virtual {v1, v0, v2}, Lcom/sshtools/common/sshd/config/ListOrderedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 281
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 285
    :cond_0
    iget v1, p0, Lcom/sshtools/common/sshd/config/Entry$11;->val$index:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 288
    iget-object v1, p0, Lcom/sshtools/common/sshd/config/Entry$11;->this$0:Lcom/sshtools/common/sshd/config/Entry;

    iget-object v1, v1, Lcom/sshtools/common/sshd/config/Entry;->keyEntries:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 294
    :cond_1
    iget-object v2, p0, Lcom/sshtools/common/sshd/config/Entry$11;->this$0:Lcom/sshtools/common/sshd/config/Entry;

    invoke-static {v2, v1}, Lcom/sshtools/common/sshd/config/Entry;->-$$Nest$mfindLastValidEntry(Lcom/sshtools/common/sshd/config/Entry;I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 295
    iget-object v2, p0, Lcom/sshtools/common/sshd/config/Entry$11;->this$0:Lcom/sshtools/common/sshd/config/Entry;

    invoke-virtual {v2}, Lcom/sshtools/common/sshd/config/Entry;->getKeyEntriesOrderedMap()Lcom/sshtools/common/sshd/config/ListOrderedMap;

    move-result-object v2

    iget-object v3, p0, Lcom/sshtools/common/sshd/config/Entry$11;->val$sshdConfigFileEntry:Lcom/sshtools/common/sshd/config/SshdConfigFileEntry;

    invoke-virtual {v2, v1, v0, v3}, Lcom/sshtools/common/sshd/config/ListOrderedMap;->put(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 297
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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

    .line 273
    invoke-virtual {p0}, Lcom/sshtools/common/sshd/config/Entry$11;->call()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
