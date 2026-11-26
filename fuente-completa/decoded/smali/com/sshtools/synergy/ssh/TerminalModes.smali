.class public final Lcom/sshtools/synergy/ssh/TerminalModes;
.super Ljava/lang/Object;
.source "TerminalModes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sshtools/synergy/ssh/TerminalModes$TerminalModesBuilder;,
        Lcom/sshtools/synergy/ssh/TerminalModes$Mode;
    }
.end annotation


# instance fields
.field private final modes:Ljava/util/Map;
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
.method private constructor <init>(Lcom/sshtools/synergy/ssh/TerminalModes$TerminalModesBuilder;)V
    .locals 1

    .line 747
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 748
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-static {p1}, Lcom/sshtools/synergy/ssh/TerminalModes$TerminalModesBuilder;->-$$Nest$fgetcodes(Lcom/sshtools/synergy/ssh/TerminalModes$TerminalModesBuilder;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/synergy/ssh/TerminalModes;->modes:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sshtools/synergy/ssh/TerminalModes$TerminalModesBuilder;Lcom/sshtools/synergy/ssh/TerminalModes-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sshtools/synergy/ssh/TerminalModes;-><init>(Lcom/sshtools/synergy/ssh/TerminalModes$TerminalModesBuilder;)V

    return-void
.end method

.method static synthetic lambda$write$0(Lcom/sshtools/common/util/ByteArrayWriter;Lcom/sshtools/synergy/ssh/TerminalModes$Mode;Ljava/lang/Integer;)V
    .locals 0

    .line 832
    invoke-virtual {p1}, Lcom/sshtools/synergy/ssh/TerminalModes$Mode;->toMode()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sshtools/common/util/ByteArrayWriter;->write(I)V

    .line 834
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sshtools/common/util/ByteArrayWriter;->writeInt(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 837
    new-instance p1, Ljava/io/UncheckedIOException;

    invoke-direct {p1, p0}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw p1
.end method


# virtual methods
.method public get(Lcom/sshtools/synergy/ssh/TerminalModes$Mode;)I
    .locals 1

    const/4 v0, 0x0

    .line 778
    invoke-virtual {p0, p1, v0}, Lcom/sshtools/synergy/ssh/TerminalModes;->get(Lcom/sshtools/synergy/ssh/TerminalModes$Mode;I)I

    move-result p1

    return p1
.end method

.method public get(Lcom/sshtools/synergy/ssh/TerminalModes$Mode;I)I
    .locals 1

    .line 789
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/TerminalModes;->modes:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public is(Lcom/sshtools/synergy/ssh/TerminalModes$Mode;)Z
    .locals 1

    const/4 v0, 0x0

    .line 800
    invoke-virtual {p0, p1, v0}, Lcom/sshtools/synergy/ssh/TerminalModes;->is(Lcom/sshtools/synergy/ssh/TerminalModes$Mode;Z)Z

    move-result p1

    return p1
.end method

.method public is(Lcom/sshtools/synergy/ssh/TerminalModes$Mode;Z)Z
    .locals 1

    .line 811
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/TerminalModes;->modes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    return p2

    .line 812
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-lez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public modes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/sshtools/synergy/ssh/TerminalModes$Mode;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 757
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/TerminalModes;->modes:Ljava/util/Map;

    return-object v0
.end method

.method public present(Lcom/sshtools/synergy/ssh/TerminalModes$Mode;)Z
    .locals 1

    .line 822
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/TerminalModes;->modes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public toByteArray()[B
    .locals 1

    .line 765
    new-instance v0, Lcom/sshtools/common/util/ByteArrayWriter;

    invoke-direct {v0}, Lcom/sshtools/common/util/ByteArrayWriter;-><init>()V

    .line 766
    invoke-virtual {p0, v0}, Lcom/sshtools/synergy/ssh/TerminalModes;->write(Lcom/sshtools/common/util/ByteArrayWriter;)V

    .line 767
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayWriter;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/sshtools/common/util/ByteArrayWriter;)V
    .locals 2

    .line 831
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/TerminalModes;->modes:Ljava/util/Map;

    new-instance v1, Lcom/sshtools/synergy/ssh/TerminalModes$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/sshtools/synergy/ssh/TerminalModes$$ExternalSyntheticLambda0;-><init>(Lcom/sshtools/common/util/ByteArrayWriter;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method
