.class public Lorg/apache/cordova/engine/SystemWebView;
.super Landroid/webkit/WebView;
.source "SystemWebView.java"

# interfaces
.implements Lorg/apache/cordova/CordovaWebViewEngine$EngineView;


# instance fields
.field private NO_SUGGESTIONS:I

.field private NO_SUGGESTIONS_AGGRESSIVE:I

.field chromeClient:Lorg/apache/cordova/engine/SystemWebChromeClient;

.field private cordova:Lorg/apache/cordova/CordovaInterface;

.field private nativeContextMenuDisabled:Z

.field private parentEngine:Lorg/apache/cordova/engine/SystemWebViewEngine;

.field private type:I

.field private viewClient:Lorg/apache/cordova/engine/SystemWebViewClient;


# direct methods
.method static bridge synthetic -$$Nest$msuppressActionModeUi(Lorg/apache/cordova/engine/SystemWebView;Landroid/view/ActionMode;Landroid/view/Menu;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/cordova/engine/SystemWebView;->suppressActionModeUi(Landroid/view/ActionMode;Landroid/view/Menu;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, v0}, Lorg/apache/cordova/engine/SystemWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 130
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 28
    iput p1, p0, Lorg/apache/cordova/engine/SystemWebView;->type:I

    const/4 p1, 0x0

    .line 29
    iput p1, p0, Lorg/apache/cordova/engine/SystemWebView;->NO_SUGGESTIONS:I

    const/4 p2, 0x1

    .line 30
    iput p2, p0, Lorg/apache/cordova/engine/SystemWebView;->NO_SUGGESTIONS_AGGRESSIVE:I

    .line 31
    iput-boolean p1, p0, Lorg/apache/cordova/engine/SystemWebView;->nativeContextMenuDisabled:Z

    return-void
.end method

.method private suppressActionMode(Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 1

    if-eqz p1, :cond_1

    .line 105
    iget-boolean v0, p0, Lorg/apache/cordova/engine/SystemWebView;->nativeContextMenuDisabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 108
    :cond_0
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/cordova/engine/SystemWebView;->suppressActionModeUi(Landroid/view/ActionMode;Landroid/view/Menu;)V

    :cond_1
    :goto_0
    return-object p1
.end method

.method private suppressActionModeUi(Landroid/view/ActionMode;Landroid/view/Menu;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 110
    iget-boolean v0, p0, Lorg/apache/cordova/engine/SystemWebView;->nativeContextMenuDisabled:Z

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 113
    :cond_0
    invoke-interface {p2}, Landroid/view/Menu;->clear()V

    const/4 p2, 0x0

    .line 114
    invoke-virtual {p1, p2}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 115
    invoke-virtual {p1, p2}, Landroid/view/ActionMode;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 117
    new-instance p2, Lorg/apache/cordova/engine/SystemWebView$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p1}, Lorg/apache/cordova/engine/SystemWebView$$ExternalSyntheticLambda0;-><init>(Lorg/apache/cordova/engine/SystemWebView;Landroid/view/ActionMode;)V

    invoke-virtual {p0, p2}, Lorg/apache/cordova/engine/SystemWebView;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private wrapActionModeCallback(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;
    .locals 1

    .line 66
    iget-boolean v0, p0, Lorg/apache/cordova/engine/SystemWebView;->nativeContextMenuDisabled:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 69
    :cond_0
    new-instance v0, Lorg/apache/cordova/engine/SystemWebView$1;

    invoke-direct {v0, p0, p1}, Lorg/apache/cordova/engine/SystemWebView$1;-><init>(Lorg/apache/cordova/engine/SystemWebView;Landroid/view/ActionMode$Callback;)V

    return-object v0

    :cond_1
    :goto_0
    return-object p1
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 165
    iget-object v0, p0, Lorg/apache/cordova/engine/SystemWebView;->parentEngine:Lorg/apache/cordova/engine/SystemWebViewEngine;

    iget-object v0, v0, Lorg/apache/cordova/engine/SystemWebViewEngine;->client:Lorg/apache/cordova/CordovaWebViewEngine$Client;

    invoke-interface {v0, p1}, Lorg/apache/cordova/CordovaWebViewEngine$Client;->onDispatchKeyEvent(Landroid/view/KeyEvent;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 169
    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public getCordovaWebView()Lorg/apache/cordova/CordovaWebView;
    .locals 1

    .line 148
    iget-object v0, p0, Lorg/apache/cordova/engine/SystemWebView;->parentEngine:Lorg/apache/cordova/engine/SystemWebViewEngine;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/cordova/engine/SystemWebViewEngine;->getCordovaWebView()Lorg/apache/cordova/CordovaWebView;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method init(Lorg/apache/cordova/engine/SystemWebViewEngine;Lorg/apache/cordova/CordovaInterface;)V
    .locals 0

    .line 135
    iput-object p2, p0, Lorg/apache/cordova/engine/SystemWebView;->cordova:Lorg/apache/cordova/CordovaInterface;

    .line 136
    iput-object p1, p0, Lorg/apache/cordova/engine/SystemWebView;->parentEngine:Lorg/apache/cordova/engine/SystemWebViewEngine;

    .line 137
    iget-object p2, p0, Lorg/apache/cordova/engine/SystemWebView;->viewClient:Lorg/apache/cordova/engine/SystemWebViewClient;

    if-nez p2, :cond_0

    .line 138
    new-instance p2, Lorg/apache/cordova/engine/SystemWebViewClient;

    invoke-direct {p2, p1}, Lorg/apache/cordova/engine/SystemWebViewClient;-><init>(Lorg/apache/cordova/engine/SystemWebViewEngine;)V

    invoke-virtual {p0, p2}, Lorg/apache/cordova/engine/SystemWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 141
    :cond_0
    iget-object p2, p0, Lorg/apache/cordova/engine/SystemWebView;->chromeClient:Lorg/apache/cordova/engine/SystemWebChromeClient;

    if-nez p2, :cond_1

    .line 142
    new-instance p2, Lorg/apache/cordova/engine/SystemWebChromeClient;

    invoke-direct {p2, p1}, Lorg/apache/cordova/engine/SystemWebChromeClient;-><init>(Lorg/apache/cordova/engine/SystemWebViewEngine;)V

    invoke-virtual {p0, p2}, Lorg/apache/cordova/engine/SystemWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    :cond_1
    return-void
.end method

.method synthetic lambda$suppressActionModeUi$0$org-apache-cordova-engine-SystemWebView(Landroid/view/ActionMode;)V
    .locals 2

    .line 118
    iget-boolean v0, p0, Lorg/apache/cordova/engine/SystemWebView;->nativeContextMenuDisabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 122
    :try_start_0
    invoke-virtual {p1, v0, v1}, Landroid/view/ActionMode;->hide(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 3

    .line 42
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 43
    iget v1, p0, Lorg/apache/cordova/engine/SystemWebView;->type:I

    iget v2, p0, Lorg/apache/cordova/engine/SystemWebView;->NO_SUGGESTIONS:I

    if-ne v1, v2, :cond_0

    .line 44
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/high16 v2, 0x80000

    or-int/2addr v1, v2

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    return-object v0

    .line 45
    :cond_0
    iget v2, p0, Lorg/apache/cordova/engine/SystemWebView;->NO_SUGGESTIONS_AGGRESSIVE:I

    if-ne v1, v2, :cond_1

    const v1, 0x80090

    .line 46
    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    return-object v0

    .line 50
    :cond_1
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    return-object v0
.end method

.method public setInputType(I)V
    .locals 0

    .line 38
    iput p1, p0, Lorg/apache/cordova/engine/SystemWebView;->type:I

    return-void
.end method

.method public setNativeContextMenuDisabled(Z)V
    .locals 0

    .line 39
    iput-boolean p1, p0, Lorg/apache/cordova/engine/SystemWebView;->nativeContextMenuDisabled:Z

    return-void
.end method

.method public setWebChromeClient(Landroid/webkit/WebChromeClient;)V
    .locals 1

    .line 159
    move-object v0, p1

    check-cast v0, Lorg/apache/cordova/engine/SystemWebChromeClient;

    iput-object v0, p0, Lorg/apache/cordova/engine/SystemWebView;->chromeClient:Lorg/apache/cordova/engine/SystemWebChromeClient;

    .line 160
    invoke-super {p0, p1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method

.method public setWebViewClient(Landroid/webkit/WebViewClient;)V
    .locals 1

    .line 153
    move-object v0, p1

    check-cast v0, Lorg/apache/cordova/engine/SystemWebViewClient;

    iput-object v0, p0, Lorg/apache/cordova/engine/SystemWebView;->viewClient:Lorg/apache/cordova/engine/SystemWebViewClient;

    .line 154
    invoke-super {p0, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lorg/apache/cordova/engine/SystemWebView;->wrapActionModeCallback(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/webkit/WebView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/cordova/engine/SystemWebView;->suppressActionMode(Landroid/view/ActionMode;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lorg/apache/cordova/engine/SystemWebView;->wrapActionModeCallback(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;

    move-result-object p1

    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/cordova/engine/SystemWebView;->suppressActionMode(Landroid/view/ActionMode;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 0

    .line 62
    invoke-direct {p0, p2}, Lorg/apache/cordova/engine/SystemWebView;->wrapActionModeCallback(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;

    move-result-object p2

    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/cordova/engine/SystemWebView;->suppressActionMode(Landroid/view/ActionMode;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 0

    .line 65
    invoke-direct {p0, p2}, Lorg/apache/cordova/engine/SystemWebView;->wrapActionModeCallback(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;

    move-result-object p2

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebView;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/cordova/engine/SystemWebView;->suppressActionMode(Landroid/view/ActionMode;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method
