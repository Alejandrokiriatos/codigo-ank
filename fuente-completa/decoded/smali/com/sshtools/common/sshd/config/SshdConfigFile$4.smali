.class Lcom/sshtools/common/sshd/config/SshdConfigFile$4;
.super Ljava/lang/Object;
.source "SshdConfigFile.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sshtools/common/sshd/config/SshdConfigFile;->addMatchEntry()Lcom/sshtools/common/sshd/config/MatchEntry;
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


# direct methods
.method constructor <init>(Lcom/sshtools/common/sshd/config/SshdConfigFile;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/sshtools/common/sshd/config/SshdConfigFile$4;->this$0:Lcom/sshtools/common/sshd/config/SshdConfigFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/sshtools/common/sshd/config/MatchEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 215
    new-instance v0, Lcom/sshtools/common/sshd/config/MatchEntry;

    iget-object v1, p0, Lcom/sshtools/common/sshd/config/SshdConfigFile$4;->this$0:Lcom/sshtools/common/sshd/config/SshdConfigFile;

    invoke-direct {v0, v1}, Lcom/sshtools/common/sshd/config/MatchEntry;-><init>(Lcom/sshtools/common/sshd/config/SshdConfigFile;)V

    .line 216
    iget-object v1, p0, Lcom/sshtools/common/sshd/config/SshdConfigFile$4;->this$0:Lcom/sshtools/common/sshd/config/SshdConfigFile;

    invoke-static {v1}, Lcom/sshtools/common/sshd/config/SshdConfigFile;->-$$Nest$fgetmatchEntries(Lcom/sshtools/common/sshd/config/SshdConfigFile;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 211
    invoke-virtual {p0}, Lcom/sshtools/common/sshd/config/SshdConfigFile$4;->call()Lcom/sshtools/common/sshd/config/MatchEntry;

    move-result-object v0

    return-object v0
.end method
