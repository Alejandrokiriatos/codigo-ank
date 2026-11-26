.class public final Lcom/sshtools/synergy/ssh/TerminalModes$TerminalModesBuilder;
.super Ljava/lang/Object;
.source "TerminalModes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/synergy/ssh/TerminalModes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TerminalModesBuilder"
.end annotation


# instance fields
.field private final codes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sshtools/synergy/ssh/TerminalModes$Mode;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetcodes(Lcom/sshtools/synergy/ssh/TerminalModes$TerminalModesBuilder;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/synergy/ssh/TerminalModes$TerminalModesBuilder;->codes:Ljava/util/Map;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 604
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 605
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/sshtools/synergy/ssh/TerminalModes$TerminalModesBuilder;->codes:Ljava/util/Map;

    return-void
.end method

.method public static create()Lcom/sshtools/synergy/ssh/TerminalModes$TerminalModesBuilder;
    .locals 1

    .line 713
    new-instance v0, Lcom/sshtools/synergy/ssh/TerminalModes$TerminalModesBuilder;

    invoke-direct {v0}, Lcom/sshtools/synergy/ssh/TerminalModes$TerminalModesBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public build()Lcom/sshtools/synergy/ssh/TerminalModes;
    .locals 2

    .line 723
    new-instance v0, Lcom/sshtools/synergy/ssh/TerminalModes;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sshtools/synergy/ssh/TerminalModes;-><init>(Lcom/sshtools/synergy/ssh/TerminalModes$TerminalModesBuilder;Lcom/sshtools/synergy/ssh/TerminalModes-IA;)V

    return-object v0
.end method

.method public fromBytes([B)Lcom/sshtools/synergy/ssh/TerminalModes$TerminalModesBuilder;
    .locals 1

    .line 727
    new-instance v0, Lcom/sshtools/common/util/ByteArrayReader;

    invoke-direct {v0, p1}, Lcom/sshtools/common/util/ByteArrayReader;-><init>([B)V

    invoke-virtual {p0, v0}, Lcom/sshtools/synergy/ssh/TerminalModes$TerminalModesBuilder;->read(Lcom/sshtools/common/util/ByteArrayReader;)Lcom/sshtools/synergy/ssh/TerminalModes$TerminalModesBuilder;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$withModes$0$com-sshtools-synergy-ssh-TerminalModes$TerminalModesBuilder(Lcom/sshtools/synergy/ssh/TerminalModes$Mode;)V
    .locals 1

    .line 0
    const/4 v0, 0x1

    .line 624
    invoke-virtual {p0, p1, v0}, Lcom/sshtools/synergy/ssh/TerminalModes$TerminalModesBuilder;->withMode(Lcom/sshtools/synergy/ssh/TerminalModes$Mode;Z)Lcom/sshtools/synergy/ssh/TerminalModes$TerminalModesBuilder;

    return-void
.end method

.method synthetic lambda$withoutModes$1$com-sshtools-synergy-ssh-TerminalModes$TerminalModesBuilder(Lcom/sshtools/synergy/ssh/TerminalModes$Mode;)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    .line 635
    invoke-virtual {p0, p1, v0}, Lcom/sshtools/synergy/ssh/TerminalModes$TerminalModesBuilder;->withMode(Lcom/sshtools/synergy/ssh/TerminalModes$Mode;Z)Lcom/sshtools/synergy/ssh/TerminalModes$TerminalModesBuilder;

    return-void
.end method

.method public read(Lcom/sshtools/common/util/ByteArrayReader;)Lcom/sshtools/synergy/ssh/TerminalModes$TerminalModesBuilder;
    .locals 3

    .line 733
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->read()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-object p0

    .line 736
    :cond_0
    invoke-static {v0}, Lcom/sshtools/synergy/ssh/TerminalModes$Mode;->fromMode(I)Lcom/sshtools/synergy/ssh/TerminalModes$Mode;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->readInt()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/sshtools/synergy/ssh/TerminalModes$TerminalModesBuilder;->withMode(Lcom/sshtools/synergy/ssh/TerminalModes$Mode;I)Lcom/sshtools/synergy/ssh/TerminalModes$TerminalModesBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 738
    new-instance v0, Ljava/io/UncheckedIOException;

    invoke-direct {v0, p1}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public reset()Lcom/sshtools/synergy/ssh/TerminalModes$TerminalModesBuilder;
    .locals 1

    .line 613
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/TerminalModes$TerminalModesBuilder;->codes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-object p0
.end method

.method public withMode(I)Lcom/sshtools/synergy/ssh/TerminalModes$TerminalModesBuilder;
    .locals 1

    const/4 v0, 0x1

    .line 694
    invoke-virtual {p0, p1, v0}, Lcom/sshtools/synergy/ssh/TerminalModes$TerminalModesBuilder;->withMode(IZ)Lcom/sshtools/synergy/ssh/TerminalModes$TerminalModesBuilder;

    move-result-object p1

    return-object p1
.end method

.method public withMode(II)Lcom/sshtools/synergy/ssh/TerminalModes$TerminalModesBuilder;
    .locals 0

    .line 669
    invoke-static {p1}, Lcom/sshtools/synergy/ssh/TerminalModes$Mode;->fromMode(I)Lcom/sshtools/synergy/ssh/TerminalModes$Mode;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/sshtools/synergy/ssh/TerminalModes$TerminalModesBuilder;->withMode(Lcom/sshtools/synergy/ssh/TerminalModes$Mode;I)Lcom/sshtools/synergy/ssh/TerminalModes$TerminalModesBuilder;

    move-result-object p1

    return-object p1
.end method

.method public withMode(IZ)Lcom/sshtools/synergy/ssh/TerminalModes$TerminalModesBuilder;
    .locals 0

    .line 647
    invoke-static {p1}, Lcom/sshtools/synergy/ssh/TerminalModes$Mode;->fromMode(I)Lcom/sshtools/synergy/ssh/TerminalModes$Mode;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/sshtools/synergy/ssh/TerminalModes$TerminalModesBuilder;->withMode(Lcom/sshtools/synergy/ssh/TerminalModes$Mode;Z)Lcom/sshtools/synergy/ssh/TerminalModes$TerminalModesBuilder;

    move-result-object p1

    return-object p1
.end method

.method public withMode(Lcom/sshtools/synergy/ssh/TerminalModes$Mode;I)Lcom/sshtools/synergy/ssh/TerminalModes$TerminalModesBuilder;
    .locals 2

    .line 680
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 681
    invoke-virtual {p1}, Lcom/sshtools/synergy/ssh/TerminalModes$Mode;->name()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xd

    invoke-static {v0, v1}, Lcom/sshtools/common/util/Utils;->rightPad(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s: 0x%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 683
    :cond_0
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/TerminalModes$TerminalModesBuilder;->codes:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public withMode(Lcom/sshtools/synergy/ssh/TerminalModes$Mode;Z)Lcom/sshtools/synergy/ssh/TerminalModes$TerminalModesBuilder;
    .locals 0

    .line 658
    invoke-virtual {p0, p1, p2}, Lcom/sshtools/synergy/ssh/TerminalModes$TerminalModesBuilder;->withMode(Lcom/sshtools/synergy/ssh/TerminalModes$Mode;I)Lcom/sshtools/synergy/ssh/TerminalModes$TerminalModesBuilder;

    move-result-object p1

    return-object p1
.end method

.method public varargs withModes([Lcom/sshtools/synergy/ssh/TerminalModes$Mode;)Lcom/sshtools/synergy/ssh/TerminalModes$TerminalModesBuilder;
    .locals 1

    .line 624
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Lcom/sshtools/synergy/ssh/TerminalModes$TerminalModesBuilder$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/sshtools/synergy/ssh/TerminalModes$TerminalModesBuilder$$ExternalSyntheticLambda1;-><init>(Lcom/sshtools/synergy/ssh/TerminalModes$TerminalModesBuilder;)V

    invoke-interface {p1, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-object p0
.end method

.method public withoutMode(I)Lcom/sshtools/synergy/ssh/TerminalModes$TerminalModesBuilder;
    .locals 1

    const/4 v0, 0x0

    .line 704
    invoke-virtual {p0, p1, v0}, Lcom/sshtools/synergy/ssh/TerminalModes$TerminalModesBuilder;->withMode(IZ)Lcom/sshtools/synergy/ssh/TerminalModes$TerminalModesBuilder;

    move-result-object p1

    return-object p1
.end method

.method public varargs withoutModes([Lcom/sshtools/synergy/ssh/TerminalModes$Mode;)Lcom/sshtools/synergy/ssh/TerminalModes$TerminalModesBuilder;
    .locals 1

    .line 635
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Lcom/sshtools/synergy/ssh/TerminalModes$TerminalModesBuilder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/sshtools/synergy/ssh/TerminalModes$TerminalModesBuilder$$ExternalSyntheticLambda0;-><init>(Lcom/sshtools/synergy/ssh/TerminalModes$TerminalModesBuilder;)V

    invoke-interface {p1, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-object p0
.end method
