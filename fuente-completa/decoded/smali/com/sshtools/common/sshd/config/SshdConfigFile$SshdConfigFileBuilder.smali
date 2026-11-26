.class public Lcom/sshtools/common/sshd/config/SshdConfigFile$SshdConfigFileBuilder;
.super Lcom/sshtools/common/sshd/config/Entry$AbstractEntryBuilder;
.source "SshdConfigFile.java"

# interfaces
.implements Lcom/sshtools/common/sshd/config/EntryBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/common/sshd/config/SshdConfigFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SshdConfigFileBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sshtools/common/sshd/config/Entry$AbstractEntryBuilder<",
        "Lcom/sshtools/common/sshd/config/SshdConfigFile$SshdConfigFileBuilder;",
        ">;",
        "Lcom/sshtools/common/sshd/config/EntryBuilder<",
        "Lcom/sshtools/common/sshd/config/SshdConfigFile$SshdConfigFileBuilder;",
        "Lcom/sshtools/common/sshd/config/SshdConfigFile$SshdConfigFileBuilder;",
        ">;"
    }
.end annotation


# instance fields
.field private managedInstance:Lcom/sshtools/common/sshd/config/GlobalConfiguration;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 253
    invoke-direct {p0}, Lcom/sshtools/common/sshd/config/Entry$AbstractEntryBuilder;-><init>()V

    .line 254
    new-instance v0, Lcom/sshtools/common/sshd/config/SshdConfigFile;

    invoke-direct {v0}, Lcom/sshtools/common/sshd/config/SshdConfigFile;-><init>()V

    iput-object v0, p0, Lcom/sshtools/common/sshd/config/SshdConfigFile$SshdConfigFileBuilder;->file:Lcom/sshtools/common/sshd/config/SshdConfigFile;

    .line 255
    iget-object v0, p0, Lcom/sshtools/common/sshd/config/SshdConfigFile$SshdConfigFileBuilder;->file:Lcom/sshtools/common/sshd/config/SshdConfigFile;

    invoke-static {v0}, Lcom/sshtools/common/sshd/config/SshdConfigFile;->-$$Nest$fgetglobalConfiguration(Lcom/sshtools/common/sshd/config/SshdConfigFile;)Lcom/sshtools/common/sshd/config/GlobalConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sshd/config/SshdConfigFile$SshdConfigFileBuilder;->managedInstance:Lcom/sshtools/common/sshd/config/GlobalConfiguration;

    .line 256
    iget-object v0, p0, Lcom/sshtools/common/sshd/config/SshdConfigFile$SshdConfigFileBuilder;->cursor:Lcom/sshtools/common/sshd/config/SshdConfigFileCursor;

    iget-object v1, p0, Lcom/sshtools/common/sshd/config/SshdConfigFile$SshdConfigFileBuilder;->managedInstance:Lcom/sshtools/common/sshd/config/GlobalConfiguration;

    invoke-virtual {v0, v1}, Lcom/sshtools/common/sshd/config/SshdConfigFileCursor;->set(Lcom/sshtools/common/sshd/config/Entry;)V

    return-void
.end method


# virtual methods
.method public build()Lcom/sshtools/common/sshd/config/SshdConfigFile;
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/sshtools/common/sshd/config/SshdConfigFile$SshdConfigFileBuilder;->file:Lcom/sshtools/common/sshd/config/SshdConfigFile;

    return-object v0
.end method

.method public cursor()Lcom/sshtools/common/sshd/config/SshdConfigFileCursor;
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/sshtools/common/sshd/config/SshdConfigFile$SshdConfigFileBuilder;->cursor:Lcom/sshtools/common/sshd/config/SshdConfigFileCursor;

    return-object v0
.end method

.method public end()Lcom/sshtools/common/sshd/config/SshdConfigFile$SshdConfigFileBuilder;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic end()Ljava/lang/Object;
    .locals 1

    .line 250
    invoke-virtual {p0}, Lcom/sshtools/common/sshd/config/SshdConfigFile$SshdConfigFileBuilder;->end()Lcom/sshtools/common/sshd/config/SshdConfigFile$SshdConfigFileBuilder;

    move-result-object v0

    return-object v0
.end method

.method public executeRead(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 284
    iget-object v0, p0, Lcom/sshtools/common/sshd/config/SshdConfigFile$SshdConfigFileBuilder;->file:Lcom/sshtools/common/sshd/config/SshdConfigFile;

    invoke-virtual {v0, p1}, Lcom/sshtools/common/sshd/config/SshdConfigFile;->executeRead(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public executeWrite(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 288
    iget-object v0, p0, Lcom/sshtools/common/sshd/config/SshdConfigFile$SshdConfigFileBuilder;->file:Lcom/sshtools/common/sshd/config/SshdConfigFile;

    invoke-virtual {v0, p1}, Lcom/sshtools/common/sshd/config/SshdConfigFile;->executeWrite(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public findMatchEntry(Ljava/util/Map;)Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;"
        }
    .end annotation

    .line 264
    iget-object v0, p0, Lcom/sshtools/common/sshd/config/SshdConfigFile$SshdConfigFileBuilder;->file:Lcom/sshtools/common/sshd/config/SshdConfigFile;

    invoke-virtual {v0, p1}, Lcom/sshtools/common/sshd/config/SshdConfigFile;->findMatchEntry(Ljava/util/Map;)Lcom/sshtools/common/sshd/config/MatchEntry;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 268
    new-instance v0, Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;

    iget-object v1, p0, Lcom/sshtools/common/sshd/config/SshdConfigFile$SshdConfigFileBuilder;->file:Lcom/sshtools/common/sshd/config/SshdConfigFile;

    iget-object v2, p0, Lcom/sshtools/common/sshd/config/SshdConfigFile$SshdConfigFileBuilder;->cursor:Lcom/sshtools/common/sshd/config/SshdConfigFileCursor;

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;-><init>(Lcom/sshtools/common/sshd/config/SshdConfigFile$SshdConfigFileBuilder;Lcom/sshtools/common/sshd/config/SshdConfigFile;Lcom/sshtools/common/sshd/config/SshdConfigFileCursor;Lcom/sshtools/common/sshd/config/MatchEntry;)V

    return-object v0

    .line 266
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Match entry not found, is null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public findMatchEntryWithMatch(Ljava/util/Map;)Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;"
        }
    .end annotation

    .line 272
    iget-object v0, p0, Lcom/sshtools/common/sshd/config/SshdConfigFile$SshdConfigFileBuilder;->file:Lcom/sshtools/common/sshd/config/SshdConfigFile;

    invoke-virtual {v0, p1}, Lcom/sshtools/common/sshd/config/SshdConfigFile;->findMatchEntryWithMatch(Ljava/util/Map;)Lcom/sshtools/common/sshd/config/MatchEntry;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 276
    new-instance v0, Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;

    iget-object v1, p0, Lcom/sshtools/common/sshd/config/SshdConfigFile$SshdConfigFileBuilder;->file:Lcom/sshtools/common/sshd/config/SshdConfigFile;

    iget-object v2, p0, Lcom/sshtools/common/sshd/config/SshdConfigFile$SshdConfigFileBuilder;->cursor:Lcom/sshtools/common/sshd/config/SshdConfigFileCursor;

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;-><init>(Lcom/sshtools/common/sshd/config/SshdConfigFile$SshdConfigFileBuilder;Lcom/sshtools/common/sshd/config/SshdConfigFile;Lcom/sshtools/common/sshd/config/SshdConfigFileCursor;Lcom/sshtools/common/sshd/config/MatchEntry;)V

    return-object v0

    .line 274
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Match entry not found, is null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected getManagedInstance()Lcom/sshtools/common/sshd/config/Entry;
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/sshtools/common/sshd/config/SshdConfigFile$SshdConfigFileBuilder;->managedInstance:Lcom/sshtools/common/sshd/config/GlobalConfiguration;

    return-object v0
.end method

.method public matchEntry(Z)Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;
    .locals 3

    .line 260
    new-instance v0, Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;

    iget-object v1, p0, Lcom/sshtools/common/sshd/config/SshdConfigFile$SshdConfigFileBuilder;->file:Lcom/sshtools/common/sshd/config/SshdConfigFile;

    iget-object v2, p0, Lcom/sshtools/common/sshd/config/SshdConfigFile$SshdConfigFileBuilder;->cursor:Lcom/sshtools/common/sshd/config/SshdConfigFileCursor;

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;-><init>(Lcom/sshtools/common/sshd/config/SshdConfigFile$SshdConfigFileBuilder;Lcom/sshtools/common/sshd/config/SshdConfigFile;Lcom/sshtools/common/sshd/config/SshdConfigFileCursor;Z)V

    return-object v0
.end method
