.class Lcom/sshtools/common/sshd/config/SshdConfigFile$2;
.super Ljava/lang/Object;
.source "SshdConfigFile.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sshtools/common/sshd/config/SshdConfigFile;->findMatchEntryWithMatch(Ljava/util/Map;)Lcom/sshtools/common/sshd/config/MatchEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/sshtools/common/sshd/config/MatchEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sshtools/common/sshd/config/SshdConfigFile;

.field final synthetic val$params:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/sshtools/common/sshd/config/SshdConfigFile;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 167
    iput-object p1, p0, Lcom/sshtools/common/sshd/config/SshdConfigFile$2;->this$0:Lcom/sshtools/common/sshd/config/SshdConfigFile;

    iput-object p2, p0, Lcom/sshtools/common/sshd/config/SshdConfigFile$2;->val$params:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/sshtools/common/sshd/config/MatchEntry;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 171
    iget-object v0, p0, Lcom/sshtools/common/sshd/config/SshdConfigFile$2;->this$0:Lcom/sshtools/common/sshd/config/SshdConfigFile;

    invoke-static {v0}, Lcom/sshtools/common/sshd/config/SshdConfigFile;->-$$Nest$fgetmatchEntries(Lcom/sshtools/common/sshd/config/SshdConfigFile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sshtools/common/sshd/config/MatchEntry;

    .line 172
    iget-object v2, p0, Lcom/sshtools/common/sshd/config/SshdConfigFile$2;->val$params:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 173
    invoke-virtual {v1, v3}, Lcom/sshtools/common/sshd/config/MatchEntry;->hasKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 177
    :cond_1
    iget-object v4, p0, Lcom/sshtools/common/sshd/config/SshdConfigFile$2;->val$params:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-virtual {v1, v3, v4}, Lcom/sshtools/common/sshd/config/MatchEntry;->matchValueAgainstPattern(Ljava/lang/String;Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_2
    return-object v1

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 167
    invoke-virtual {p0}, Lcom/sshtools/common/sshd/config/SshdConfigFile$2;->call()Lcom/sshtools/common/sshd/config/MatchEntry;

    move-result-object v0

    return-object v0
.end method
