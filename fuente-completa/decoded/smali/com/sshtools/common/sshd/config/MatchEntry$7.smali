.class Lcom/sshtools/common/sshd/config/MatchEntry$7;
.super Ljava/lang/Object;
.source "MatchEntry.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sshtools/common/sshd/config/MatchEntry;->pushCriteria(Ljava/lang/String;Ljava/lang/String;)V
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

.field final synthetic val$criteria:Ljava/lang/String;

.field final synthetic val$value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sshtools/common/sshd/config/MatchEntry;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 181
    iput-object p1, p0, Lcom/sshtools/common/sshd/config/MatchEntry$7;->this$0:Lcom/sshtools/common/sshd/config/MatchEntry;

    iput-object p2, p0, Lcom/sshtools/common/sshd/config/MatchEntry$7;->val$criteria:Ljava/lang/String;

    iput-object p3, p0, Lcom/sshtools/common/sshd/config/MatchEntry$7;->val$value:Ljava/lang/String;

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

    .line 181
    invoke-virtual {p0}, Lcom/sshtools/common/sshd/config/MatchEntry$7;->call()Ljava/lang/Void;

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

    .line 185
    iget-object v0, p0, Lcom/sshtools/common/sshd/config/MatchEntry$7;->this$0:Lcom/sshtools/common/sshd/config/MatchEntry;

    invoke-static {v0}, Lcom/sshtools/common/sshd/config/MatchEntry;->-$$Nest$fgetmatchCriteriaMap(Lcom/sshtools/common/sshd/config/MatchEntry;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/sshtools/common/sshd/config/MatchEntry$7;->val$criteria:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/sshtools/common/sshd/config/MatchEntry$7;->this$0:Lcom/sshtools/common/sshd/config/MatchEntry;

    iget-object v2, p0, Lcom/sshtools/common/sshd/config/MatchEntry$7;->val$criteria:Ljava/lang/String;

    iget-object v3, p0, Lcom/sshtools/common/sshd/config/MatchEntry$7;->val$value:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/sshtools/common/sshd/config/MatchEntry;->addCriteria(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/sshtools/common/sshd/config/MatchEntry$7;->this$0:Lcom/sshtools/common/sshd/config/MatchEntry;

    invoke-static {v0}, Lcom/sshtools/common/sshd/config/MatchEntry;->-$$Nest$fgetmatchCriteriaMap(Lcom/sshtools/common/sshd/config/MatchEntry;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/sshtools/common/sshd/config/MatchEntry$7;->val$criteria:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    iget-object v2, p0, Lcom/sshtools/common/sshd/config/MatchEntry$7;->val$value:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object v1
.end method
