# Patta Gate demo · Purvo Labs

Score tea leaf quality from a photo, price the load, share a slip, and simulate fermentation. A demo by Sagar Paul and Suhag Barman.

- **Open the demo:** https://paulsagar7796-cmyk.github.io/purvo-labs-patta/
- **Phone / any device:** https://claude.ai/artifact/1mjUZEKRcWSFtNH1Puz92A (private: sign in to claude.ai; share it from the page's Share menu if Suhag needs it)
- **Offline on the laptop:** double-click `index.html`. No internet needed.

`app.html` is the source for both. After editing it, run `./build.sh` to rebuild `index.html`.

## What's in it
- **Gate:** Take photo / Upload, or Sample: good / mixed / poor. Tap a shoot to change its label.
  - AI view: shows what the computer separated from the sheet, plus each shoot's centre and main axis.
  - Photo checks: dark photo, background that isn't white, too few shoots, touching shoots (dashed box with "?"), shoots cut off at the edge.
  - Add another handful: several photos of one load are scored together. The "likely 67–99%" range narrows as you add photos.
  - Slip: English, Assamese or Hindi, as an image (press and hold on a phone to save) plus WhatsApp and Copy text.
  - Weight calibration: the density factors are editable (under the score).
- **Ferment:** simulation. Use the sliders, choose a speed, press Start (or the space bar).
- **Today's ledger:** saved slips, totals and grower averages against the target. It starts with 5 example rows, labelled "example". Clear them before a real test.

## Presenter keys (laptop)
`1` `2` `3` good / mixed / poor sample · `A` AI view · `G` Gate · `F` Ferment · `L` ledger · `Space` start the batch on the Ferment tab

## Self-test (offline copy only)
Open `index.html?selftest`. It scores 9 generated mats and prints accuracy at the bottom.

## Taking a good real photo
- Plain white A3 sheet, even light, no harsh shadows.
- 20–30 shoots, not touching. Phone straight above, with white border all round.

## Limits to say if asked
- Version 0 uses classical computer vision (colour, size and shape rules), not a trained model yet.
- Weight is area × fixed factors. The pilot calibrates the factors against weighed samples.
- Samples are generated images. The pricing rule and the ₹24 benchmark are examples.
- The Assamese and Hindi slip text should be checked by a native speaker.
