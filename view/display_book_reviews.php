<?php include './view/header.php'; ?>
<main>

	<ul>
 		<?php foreach ($books as $book) :
 			$book_id = $book['bookID'];
 			$reviews = get_reviews_by_book($book_id);
 			?>
			<li>
				TITLE: 
				<?php echo $book['bookTitle']; ?>
			</li>
			<ul>
				<?php foreach ($reviews as $review) :?>
				<li>
					REVIEW: 
					<?php echo $review['review']; ?>
				</li>
				<?php endforeach; ?>
			</ul>
		<?php endforeach; ?>
	</ul>

</main>
<?php include './view/footer.php'; ?>