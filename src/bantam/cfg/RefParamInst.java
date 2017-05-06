/* Bantam Java Compiler and Language Toolset.

   Copyright (C) 2009 by Marc Corliss (corliss@hws.edu) and 
                         David Furcy (furcyd@uwosh.edu) and
                         E Christopher Lewis (lewis@vmware.com).
   ALL RIGHTS RESERVED.

   The Bantam Java toolset is distributed under the following 
   conditions:

     You may make copies of the toolset for your own use and 
     modify those copies.

     All copies of the toolset must retain the author names and 
     copyright notice.

     You may not sell the toolset or distribute it in 
     conjunction with a commerical product or service without 
     the expressed written consent of the authors.

   THIS SOFTWARE IS PROVIDED ``AS IS'' AND WITHOUT ANY EXPRESS 
   OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE 
   IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A 
   PARTICULAR PURPOSE. 
*/

package bantam.cfg;

/** A class representing a three-address code reference parameter instruction 
  * (RefParamInst).  A reference parameter instruction consists of a source 
  * value representing the reference (implicit) parameter expression (inherited
  * from ParamInst).  From TACInst it also inherits an opcode (REFPARAM).
  * 
  * @author Marc Corliss and Lori Pietraszek
  * */
public class RefParamInst extends ParamInst {
    /** RefParamInst constructor
      * @param source source operand holding value of the reference (implicit) parameter expression
      * */
    public RefParamInst(String source) {
	super(TACInst.REFPARAM, "refparam", source);

	// no additional error checking is necessary beyond what's done in parent
    }
}
