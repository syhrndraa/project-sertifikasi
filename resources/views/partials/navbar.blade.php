<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">
            <img src="img/logoupn.png" alt="" width="30" height="30" class="d-inline-block align-text-center">
            VETERAN
          </a>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
          <li class="nav-item">
            <a class="nav-link {{ ($title === "Home") ? 'active' : ''}}" aria-current="page" href="/">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link {{ ($title === "About") ? 'active' : ''}}" href="/about">About</a>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
              Categories
            </a>
            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
              <li><a class="dropdown-item" href="/categories/student-organizations">Student Organizations</a></li>
              <li><a class="dropdown-item" href="/categories/curriculum">Curriculum</a></li>
              <li><a class="dropdown-item" href="/categories/article">Article</a></li>
            </ul>
          </li>
          <li class="nav-item">
            <a class="nav-link {{ ($title === "All Posts") ? 'active' : ''}}" href="/posts">All Posts</a>
          </li>
        </ul>
        <form class="d-flex">
          <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
          <button class="btn btn-outline-success" type="submit">Search</button>
        </form>
      </div>
    </div>
  </nav>