.class Lcom/sshtools/common/sshd/config/Entry$12;
.super Ljava/lang/Object;
.source "Entry.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sshtools/common/sshd/config/Entry;->appendEntry(Lcom/sshtools/common/sshd/config/SshdConfigFileEntry;)V
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

.field final synthetic val$sshdConfigFileEntry:Lcom/sshtools/common/sshd/config/SshdConfigFileEntry;


# direct methods
.method constructor <init>(Lcom/sshtools/common/sshd/config/Entry;Lcom/sshtools/common/sshd/config/SshdConfigFileEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 316
    iput-object p1, p0, Lcom/sshtools/common/sshd/config/Entry$12;->this$0:Lcom/sshtools/common/sshd/config/Entry;

    iput-object p2, p0, Lcom/sshtools/common/sshd/config/Entry$12;->val$sshdConfigFileEntry:Lcom/sshtools/common/sshd/config/SshdConfigFileEntry;

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

    .line 316
    invoke-virtual {p0}, Lcom/sshtools/common/sshd/config/Entry$12;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 320
    iget-object v0, p0, Lcom/sshtools/common/sshd/config/Entry$12;->this$0:Lcom/sshtools/common/sshd/config/Entry;

    iget-object v1, p0, Lcom/sshtools/common/sshd/config/Entry$12;->val$sshdConfigFileEntry:Lcom/sshtools/common/sshd/config/SshdConfigFileEntry;

    invoke-static {v0, v1}, Lcom/sshtools/common/sshd/config/Entry;->-$$Nest$mresolveKey(Lcom/sshtools/common/sshd/config/Entry;Lcom/sshtools/common/sshd/config/SshdConfigFileEntry;)Ljava/lang/String;

    move-result-object v0

    .line 321
    iget-object v1, p0, Lcom/sshtools/common/sshd/config/Entry$12;->this$0:Lcom/sshtools/common/sshd/config/Entry;

    iget-object v1, v1, Lcom/sshtools/common/sshd/config/Entry;->keyEntries:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 322
    iget-object v1, p0, Lcom/sshtools/common/sshd/config/Entry$12;->this$0:Lcom/sshtools/common/sshd/config/Entry;

    iget-object v1, v1, Lcom/sshtools/common/sshd/config/Entry;->keyEntries:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sshtools/common/sshd/config/SshdConfigFileEntry;

    .line 323
    :goto_0
    invoke-virtual {v0}, Lcom/sshtools/common/sshd/config/SshdConfigFileEntry;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 324
    invoke-virtual {v0}, Lcom/sshtools/common/sshd/config/SshdConfigFileEntry;->getNext()Lcom/sshtools/common/sshd/config/SshdConfigFileEntry;

    move-result-object v0

    goto :goto_0

    .line 326
    :cond_0
    iget-object v1, p0, Lcom/sshtools/common/sshd/config/Entry$12;->val$sshdConfigFileEntry:Lcom/sshtools/common/sshd/config/SshdConfigFileEntry;

    invoke-virtual {v0, v1}, Lcom/sshtools/common/sshd/config/SshdConfigFileEntry;->setNext(Lcom/sshtools/common/sshd/config/SshdConfigFileEntry;)V

    goto :goto_1

    .line 328
    :cond_1
    iget-object v1, p0, Lcom/sshtools/common/sshd/config/Entry$12;->this$0:Lcom/sshtools/common/sshd/config/Entry;

    iget-object v1, v1, Lcom/sshtools/common/sshd/config/Entry;->keyEntries:Ljava/util/Map;

    iget-object v2, p0, Lcom/sshtools/common/sshd/config/Entry$12;->val$sshdConfigFileEntry:Lcom/sshtools/common/sshd/config/SshdConfigFileEntry;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method
