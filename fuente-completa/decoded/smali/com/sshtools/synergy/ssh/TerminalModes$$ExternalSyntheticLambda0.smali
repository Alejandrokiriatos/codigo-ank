.class public final synthetic Lcom/sshtools/synergy/ssh/TerminalModes$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/sshtools/common/util/ByteArrayWriter;


# direct methods
.method public synthetic constructor <init>(Lcom/sshtools/common/util/ByteArrayWriter;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sshtools/synergy/ssh/TerminalModes$$ExternalSyntheticLambda0;->f$0:Lcom/sshtools/common/util/ByteArrayWriter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/TerminalModes$$ExternalSyntheticLambda0;->f$0:Lcom/sshtools/common/util/ByteArrayWriter;

    check-cast p1, Lcom/sshtools/synergy/ssh/TerminalModes$Mode;

    check-cast p2, Ljava/lang/Integer;

    invoke-static {v0, p1, p2}, Lcom/sshtools/synergy/ssh/TerminalModes;->lambda$write$0(Lcom/sshtools/common/util/ByteArrayWriter;Lcom/sshtools/synergy/ssh/TerminalModes$Mode;Ljava/lang/Integer;)V

    return-void
.end method
