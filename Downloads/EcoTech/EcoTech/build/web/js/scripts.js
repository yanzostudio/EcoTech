document.addEventListener('DOMContentLoaded', () => {
    const ctx = document.getElementById('dashboardPieChart').getContext('2d');
    new Chart(ctx, {
        type: 'pie',
        data: {
            labels: ['Energy Usage', 'Water Usage', 'Waste Management'],
            datasets: [{
                data: [40, 30, 30], // Example data
                backgroundColor: ['#4fc3f7', '#ff7f50', '#e74c3c'],
            }]
        },
        options: {
            responsive: true,
            plugins: {
                legend: {
                    position: 'top',
                    labels: {
                        color: '#f4f4f4'
                    }
                }
            }
        }
    });
});
document.addEventListener('DOMContentLoaded', () => {
    const ctx = document.getElementById('goalCategoriesChart').getContext('2d');
    new Chart(ctx, {
        type: 'bar',
        data: {
            labels: ['Carbon Footprint', 'Water Conservation', 'Waste Reduction'],
            datasets: [{
                label: 'Goal Progress',
                data: [80, 60, 50], // Example data
                backgroundColor: '#4fc3f7',
            }]
        },
        options: {
            responsive: true,
            plugins: {
                legend: {
                    display: true,
                    labels: {
                        color: '#f4f4f4'
                    }
                }
            },
            scales: {
                y: {
                    beginAtZero: true,
                    ticks: {
                        color: '#f4f4f4'
                    },
                    grid: {
                        color: '#4fc3f7'
                    }
                },
                x: {
                    ticks: {
                        color: '#f4f4f4'
                    },
                    grid: {
                        color: '#4fc3f7'
                    }
                }
            }
        }
    });
});
// Function to set active state on sidebar links
document.addEventListener('DOMContentLoaded', () => {
    const sidebarLinks = document.querySelectorAll('.sidebar a');

    // Remove "active" class from all links
    sidebarLinks.forEach(link => {
        link.classList.remove('active');
    });

    // Add "active" class to the link that matches the current URL
    const currentPath = window.location.pathname.split('/').pop();
    sidebarLinks.forEach(link => {
        if (link.getAttribute('href') === currentPath) {
            link.classList.add('active');
        }
    });
});
function renderDashboardPieChart() {
    const ctx = document.getElementById('dashboardPieChart')?.getContext('2d');
    if (ctx) {
        new Chart(ctx, {
            type: 'pie',
            data: {
                labels: ['Energy Usage', 'Water Usage', 'Waste Management'],
                datasets: [{
                    data: [40, 30, 30],
                    backgroundColor: ['#4fc3f7', '#ff7f50', '#e74c3c'],
                }],
            },
            options: {
                responsive: true,
                plugins: {
                    legend: {
                        position: 'top',
                    },
                },
            },
        });
    }
}
renderDashboardPieChart();
const ctx = document.getElementById('dashboardPieChart').getContext('2d');
const myPieChart = new Chart(ctx, {
    type: 'pie',
    data: {
        labels: ['Energy Usage', 'Water Usage', 'Waste Management'],
        datasets: [{
            data: [40, 30, 30],
            backgroundColor: ['#4CAF50', '#FFC107', '#F44336']
        }]
    }
});
