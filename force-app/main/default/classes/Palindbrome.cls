public class Palindbrome

{

    public Palindbrome (String original, String reverse) {

        {

            for(Integer i = original.length() - 1; i >= 0; i--)

            {

                reverse += original.substring(i, i+1);

            }

            if(original.equals(reverse))

            {

                System.debug('333 String is Palindrome');

            }

            else

            {

                System.debug('333 String is not Palindrome');

            }

    }

}
}