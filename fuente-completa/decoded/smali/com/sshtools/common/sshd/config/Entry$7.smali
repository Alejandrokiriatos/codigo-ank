.class Lcom/sshtools/common/sshd/config/Entry$7;
.super Ljava/lang/Object;
.source "Entry.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sshtools/common/sshd/config/Entry;->addBeginingComment(Lcom/sshtools/common/sshd/config/CommentEntry;)V
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

.field final synthetic val$commentEntry:Lcom/sshtools/common/sshd/config/CommentEntry;


# direct methods
.method constructor <init>(Lcom/sshtools/common/sshd/config/Entry;Lcom/sshtools/common/sshd/config/CommentEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 157
    iput-object p1, p0, Lcom/sshtools/common/sshd/config/Entry$7;->this$0:Lcom/sshtools/common/sshd/config/Entry;

    iput-object p2, p0, Lcom/sshtools/common/sshd/config/Entry$7;->val$commentEntry:Lcom/sshtools/common/sshd/config/CommentEntry;

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

    .line 157
    invoke-virtual {p0}, Lcom/sshtools/common/sshd/config/Entry$7;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lcom/sshtools/common/sshd/config/Entry$7;->this$0:Lcom/sshtools/common/sshd/config/Entry;

    invoke-virtual {v0}, Lcom/sshtools/common/sshd/config/Entry;->getKeyEntriesOrderedMap()Lcom/sshtools/common/sshd/config/ListOrderedMap;

    move-result-object v0

    iget-object v1, p0, Lcom/sshtools/common/sshd/config/Entry$7;->this$0:Lcom/sshtools/common/sshd/config/Entry;

    invoke-virtual {v1}, Lcom/sshtools/common/sshd/config/Entry;->getCommentEntryKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sshtools/common/sshd/config/Entry$7;->val$commentEntry:Lcom/sshtools/common/sshd/config/CommentEntry;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lcom/sshtools/common/sshd/config/ListOrderedMap;->put(ILjava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method
