.class Lcom/sshtools/common/sshd/config/MatchEntry$1;
.super Ljava/lang/Object;
.source "MatchEntry.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sshtools/common/sshd/config/MatchEntry;->addMatchCriteriaComment(Lcom/sshtools/common/sshd/config/CommentEntry;)V
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
.field final synthetic this$0:Lcom/sshtools/common/sshd/config/MatchEntry;

.field final synthetic val$commentEntry:Lcom/sshtools/common/sshd/config/CommentEntry;


# direct methods
.method constructor <init>(Lcom/sshtools/common/sshd/config/MatchEntry;Lcom/sshtools/common/sshd/config/CommentEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 68
    iput-object p1, p0, Lcom/sshtools/common/sshd/config/MatchEntry$1;->this$0:Lcom/sshtools/common/sshd/config/MatchEntry;

    iput-object p2, p0, Lcom/sshtools/common/sshd/config/MatchEntry$1;->val$commentEntry:Lcom/sshtools/common/sshd/config/CommentEntry;

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

    .line 68
    invoke-virtual {p0}, Lcom/sshtools/common/sshd/config/MatchEntry$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/sshtools/common/sshd/config/MatchEntry$1;->this$0:Lcom/sshtools/common/sshd/config/MatchEntry;

    invoke-static {v0}, Lcom/sshtools/common/sshd/config/MatchEntry;->-$$Nest$fgetmatchCriteriaCommentEntries(Lcom/sshtools/common/sshd/config/MatchEntry;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/sshtools/common/sshd/config/MatchEntry$1;->val$commentEntry:Lcom/sshtools/common/sshd/config/CommentEntry;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    return-object v0
.end method
