function navigateTo(section) {
    switch (section) {
        case 'home':
            window.location.href = 'index.html';
            break;
        case 'discord':
            window.open('https://www.discord.com/', '_blank');
            break;
        case 'about':
            window.location.href = 'about/index.html';
            break;
        case 'projects':
            window.location.href = 'projects.html';
            break;
        case 'contact':
            window.location.href = 'contact.html';
            break;
        case 'github':
            window.open('https://github.com/bandileon/', '_blank');
            break;
        default:
            console.log('Invalid section');
    }
}
