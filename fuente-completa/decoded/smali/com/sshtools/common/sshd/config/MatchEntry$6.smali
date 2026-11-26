.class Lcom/sshtools/common/sshd/config/MatchEntry$6;
.super Ljava/lang/Object;
.source "MatchEntry.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sshtools/common/sshd/config/MatchEntry;->matchValueExact(Ljava/lang/String;Ljava/util/Map;)Z
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
.field final synthetic this$0:Lcom/sshtools/common/sshd/config/MatchEntry;

.field final synthetic val$paramKey:Ljava/lang/String;

.field final synthetic val$params:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/sshtools/common/sshd/config/MatchEntry;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 165
    iput-object p1, p0, Lcom/sshtools/common/sshd/config/MatchEntry$6;->this$0:Lcom/sshtools/common/sshd/config/MatchEntry;

    iput-object p2, p0, Lcom/sshtools/common/sshd/config/MatchEntry$6;->val$paramKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/sshtools/common/sshd/config/MatchEntry$6;->val$params:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lcom/sshtools/common/sshd/config/MatchEntry$6;->this$0:Lcom/sshtools/common/sshd/config/MatchEntry;

    invoke-static {v0}, Lcom/sshtools/common/sshd/config/MatchEntry;->-$$Nest$fgetmatchCriteriaMap(Lcom/sshtools/common/sshd/config/MatchEntry;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/sshtools/common/sshd/config/MatchEntry$6;->val$paramKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 170
    iget-object v1, p0, Lcom/sshtools/common/sshd/config/MatchEntry$6;->val$params:Ljava/util/Map;

    iget-object v2, p0, Lcom/sshtools/common/sshd/config/MatchEntry$6;->val$paramKey:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

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

    .line 165
    invoke-virtual {p0}, Lcom/sshtools/common/sshd/config/MatchEntry$6;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
