.class Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder$1;
.super Ljava/lang/Object;
.source "MatchEntry.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;->end()Lcom/sshtools/common/sshd/config/SshdConfigFile$SshdConfigFileBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/sshtools/common/sshd/config/SshdConfigFile$SshdConfigFileBuilder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;


# direct methods
.method constructor <init>(Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;)V
    .locals 0

    .line 739
    iput-object p1, p0, Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder$1;->this$0:Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/sshtools/common/sshd/config/SshdConfigFile$SshdConfigFileBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 743
    iget-object v0, p0, Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder$1;->this$0:Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;

    iget-object v0, v0, Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;->cursor:Lcom/sshtools/common/sshd/config/SshdConfigFileCursor;

    invoke-virtual {v0}, Lcom/sshtools/common/sshd/config/SshdConfigFileCursor;->remove()Lcom/sshtools/common/sshd/config/Entry;

    .line 744
    iget-object v0, p0, Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder$1;->this$0:Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;

    invoke-static {v0}, Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;->-$$Nest$fgetparentBuilder(Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;)Lcom/sshtools/common/sshd/config/SshdConfigFile$SshdConfigFileBuilder;

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

    .line 739
    invoke-virtual {p0}, Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder$1;->call()Lcom/sshtools/common/sshd/config/SshdConfigFile$SshdConfigFileBuilder;

    move-result-object v0

    return-object v0
.end method
