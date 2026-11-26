.class public final synthetic Lcom/sshtools/synergy/ssh/TerminalModes$TerminalModesBuilder$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/sshtools/synergy/ssh/TerminalModes$TerminalModesBuilder;


# direct methods
.method public synthetic constructor <init>(Lcom/sshtools/synergy/ssh/TerminalModes$TerminalModesBuilder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sshtools/synergy/ssh/TerminalModes$TerminalModesBuilder$$ExternalSyntheticLambda1;->f$0:Lcom/sshtools/synergy/ssh/TerminalModes$TerminalModesBuilder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/TerminalModes$TerminalModesBuilder$$ExternalSyntheticLambda1;->f$0:Lcom/sshtools/synergy/ssh/TerminalModes$TerminalModesBuilder;

    check-cast p1, Lcom/sshtools/synergy/ssh/TerminalModes$Mode;

    invoke-virtual {v0, p1}, Lcom/sshtools/synergy/ssh/TerminalModes$TerminalModesBuilder;->lambda$withModes$0$com-sshtools-synergy-ssh-TerminalModes$TerminalModesBuilder(Lcom/sshtools/synergy/ssh/TerminalModes$Mode;)V

    return-void
.end method
