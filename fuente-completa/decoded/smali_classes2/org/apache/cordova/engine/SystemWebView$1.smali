.class Lorg/apache/cordova/engine/SystemWebView$1;
.super Landroid/view/ActionMode$Callback2;
.source "SystemWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/engine/SystemWebView;->wrapActionModeCallback(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/cordova/engine/SystemWebView;

.field final synthetic val$callback:Landroid/view/ActionMode$Callback;


# direct methods
.method constructor <init>(Lorg/apache/cordova/engine/SystemWebView;Landroid/view/ActionMode$Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 69
    iput-object p1, p0, Lorg/apache/cordova/engine/SystemWebView$1;->this$0:Lorg/apache/cordova/engine/SystemWebView;

    iput-object p2, p0, Lorg/apache/cordova/engine/SystemWebView$1;->val$callback:Landroid/view/ActionMode$Callback;

    invoke-direct {p0}, Landroid/view/ActionMode$Callback2;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1

    .line 88
    iget-object v0, p0, Lorg/apache/cordova/engine/SystemWebView$1;->val$callback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2

    .line 72
    iget-object v0, p0, Lorg/apache/cordova/engine/SystemWebView$1;->val$callback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v1, p0, Lorg/apache/cordova/engine/SystemWebView$1;->this$0:Lorg/apache/cordova/engine/SystemWebView;

    invoke-static {v1, p1, p2}, Lorg/apache/cordova/engine/SystemWebView;->-$$Nest$msuppressActionModeUi(Lorg/apache/cordova/engine/SystemWebView;Landroid/view/ActionMode;Landroid/view/Menu;)V

    :cond_0
    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 1

    .line 93
    iget-object v0, p0, Lorg/apache/cordova/engine/SystemWebView$1;->val$callback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    return-void
.end method

.method public onGetContentRect(Landroid/view/ActionMode;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 2

    .line 98
    iget-object v0, p0, Lorg/apache/cordova/engine/SystemWebView$1;->val$callback:Landroid/view/ActionMode$Callback;

    instance-of v1, v0, Landroid/view/ActionMode$Callback2;

    if-eqz v1, :cond_0

    .line 99
    check-cast v0, Landroid/view/ActionMode$Callback2;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/ActionMode$Callback2;->onGetContentRect(Landroid/view/ActionMode;Landroid/view/View;Landroid/graphics/Rect;)V

    return-void

    .line 102
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ActionMode$Callback2;->onGetContentRect(Landroid/view/ActionMode;Landroid/view/View;Landroid/graphics/Rect;)V

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2

    .line 81
    iget-object v0, p0, Lorg/apache/cordova/engine/SystemWebView$1;->val$callback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    .line 82
    iget-object v1, p0, Lorg/apache/cordova/engine/SystemWebView$1;->this$0:Lorg/apache/cordova/engine/SystemWebView;

    invoke-static {v1, p1, p2}, Lorg/apache/cordova/engine/SystemWebView;->-$$Nest$msuppressActionModeUi(Lorg/apache/cordova/engine/SystemWebView;Landroid/view/ActionMode;Landroid/view/Menu;)V

    return v0
.end method
