.class public final synthetic Lcom/sshtools/client/tasks/PushTask$PushTaskBuilder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Ljava/io/File;

    invoke-static {p1}, Lcom/sshtools/client/tasks/PushTask$PushTaskBuilder;->$r8$lambda$Vf-23ZqUL0aPMMTTCCeUW08P5sg(Ljava/io/File;)Ljava/nio/file/Path;

    move-result-object p1

    return-object p1
.end method
