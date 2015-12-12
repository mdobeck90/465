== README

<p>Ruby version 2.2.1</p>
<p>System dependencies</p>
<p> Bcrypt gem was utilized for the Session Controller.  It offeres the core functionality of devise while providing easy salting and hashing of passwords.  A simple has_secure_password in the model will take care of all encryption and verification.</p>
</li><li>
<p>Database creation</p>
</li><li>
<p>Abstract</p>
<p>This project was a simple test of 3 things
-building the login/user session management
-allowing user actions to affect other users data
-creating a self joining table that would allow relationships between many-to-many usersto be stored</p>
<p>After users login/signup they will be given 4 "operativs".  This object acts as a way to generate resources and items that can be used to defend against incursions from other users or to attack other users.  The generation of resources is mostly random as it was the quickest to implement.  Once the user feels ready they can select another user to "attack".</p>
<p>The attack will be calculated using pre-existing values in the user's table as well as randomly generated numbers.  So no attack will be the same.  The attacking player will either be rewarded with a large percentage of the target's assets or they will be punished by receiving nothing and ending up on the "Enemy Users" list of the attack target.</p>
</li><li>
<p>Login/Signup Session System</p>
<img src="public/screen_capture1.png">

</ul>
