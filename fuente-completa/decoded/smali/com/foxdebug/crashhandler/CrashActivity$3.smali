.class Lcom/foxdebug/crashhandler/CrashActivity$3;
.super Ljava/lang/Object;
.source "CrashActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/foxdebug/crashhandler/CrashActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/foxdebug/crashhandler/CrashActivity;


# direct methods
.method constructor <init>(Lcom/foxdebug/crashhandler/CrashActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 252
    iput-object p1, p0, Lcom/foxdebug/crashhandler/CrashActivity$3;->this$0:Lcom/foxdebug/crashhandler/CrashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 255
    iget-object p1, p0, Lcom/foxdebug/crashhandler/CrashActivity$3;->this$0:Lcom/foxdebug/crashhandler/CrashActivity;

    invoke-virtual {p1}, Lcom/foxdebug/crashhandler/CrashActivity;->finish()V

    const/4 p1, 0x0

    .line 256
    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    return-void
.end method
