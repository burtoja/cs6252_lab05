<?php include './view/header.php'; ?>
<main>

	<ul>
 		<?php foreach ($books as $book) :
 			$book_id = $book['bookID'];
 			$reviews = get_reviews_by_book($book_id);
 			?>
			<li>
				<h2>TITLE:  <?php echo $book['bookTitle']; ?></h2>
			</li>
			<ul>
				<?php if(count($reviews) == 0) : ?>
					<li>
						There are no reviews for this title.
					</li>
				<?php else: ?>
				
					<?php foreach ($reviews as $review) :?>
					<li>
						<h3>REVIEW:</h3> 
						<?php echo $review['review']; ?>
					</li>
					<?php endforeach; ?>
				<?php endif;?>
			</ul>
		<?php endforeach; ?>
	</ul>

</main>
<?php include './view/footer.php'; ?>