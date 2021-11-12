class StarMoveSystem {

  ArrayList<StarMove> slist;
  PVector originLocation;

  StarMoveSystem(PVector location) {
    originLocation = location.get();
    slist = new ArrayList<StarMove>();
  }

  void addStarMove() {
    slist.add(new StarMove(originLocation));
  }

  void run() {
    Iterator<StarMove> it = slist.iterator();

    while (it.hasNext()) {
      StarMove s = it.next();
      s.run();
      if (s.isDead()) {
        it.remove();
      }
    }
  }
}
