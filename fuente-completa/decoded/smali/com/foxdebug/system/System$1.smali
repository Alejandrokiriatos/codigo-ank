.class Lcom/foxdebug/system/System$1;
.super Ljava/lang/Object;
.source "System.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/foxdebug/system/System;->initialize(Lorg/apache/cordova/CordovaInterface;Lorg/apache/cordova/CordovaWebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/foxdebug/system/System;


# direct methods
.method constructor <init>(Lcom/foxdebug/system/System;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 97
    iput-object p1, p0, Lcom/foxdebug/system/System$1;->this$0:Lcom/foxdebug/system/System;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/foxdebug/system/System$1;->this$0:Lcom/foxdebug/system/System;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/foxdebug/system/System;->-$$Nest$msetNativeContextMenuDisabled(Lcom/foxdebug/system/System;Z)V

    return-void
.end method
