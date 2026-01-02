#! @Chapter The Drinfeld double of a group algebra
#!
#!
#! We denote by <M>\mathcal{D}(G)</M> the **Drinfeld Double** of <M>\Bbbk G</M>.
#! Since <M>\Bbbk G</M> is a commutative algebra, <M> \Bbbk G</M> and <M>\Bbbk^G</M>
#! are Hopf subalgebras of <M>\mathcal{D}(G)</M>. Then the algebra structure of
#! <M>\mathcal{D}(G)</M> is completely determined by
#! $$\delta_h g = g \delta_{g^{-1} h g}, \forall g, h \in G, \quad \text{cf. (1)}.$$
#! We will define **Verma modules** in $\S 3.1$ by inducing from the simple
#! $\mathcal{D}(G)$-modules. These are well-known because they are equivalent
#! to the simple objects in ${{}_{G}^{G}{\mathcal{YD}}}$ and a
#! description of these last can best be found for instance in [1, Subsection 3.1].
#! We recall this description but in the context of modules over $\mathcal{D}(G)$.
#!
#! Let $\mathcal{O}_g$ be the **conjugacy class** of $g \in G$,
#! $\mathcal{C}_g$ the **centralizer** of $g$ and $(U, \varrho)$
#! an **irreducible representation** of $\mathcal{C}_g$.
#! The $\Bbbk G$-module induced by $(U, \varrho)$,
#! $$
#! M(g, \varrho) = \mathrm{Ind}_{\mathcal{C}_g}^G U = \Bbbk G \otimes_{k\mathcal{C}_g} U,
#! $$
#! is also a $\Bbbk G$-module if we define the action by
#! $$
#! f \cdot (x \otimes_{\Bbbk\mathcal{C}_g} u) = \langle f, x g x^{-1} \rangle x \otimes_{\Bbbk \mathcal{C}_g} u, \quad \text{for all } f \in \Bbbk G, x \in G \text{ and } u \in U.
#! $$
#! Then $x \otimes_{\Bbbk\mathcal{C}_g} u$ is of $G$-degree $xgx^{-1}$
#! and $\mathrm{Supp}\, M(g, \varrho) = \mathcal{O}_g$.
#! Note that $\dim M(g, \varrho) = \# \mathcal{O}_g \cdot \dim U$.
#! 
#! Therefore $M(g, \varrho)$ is a $\mathcal{D}(G)$-module. Moreover,
#! $M(g, \varrho)$ is simple and every simple $\mathcal{D}(G)$-module
#! is of this form by <Cite Key='andruskiewitsch1998braidedhopfalgebrasnon'/>.
#!
#! - Definition 1. A $\mathcal{D}(G)$-module is of **weight** $(g, \varrho)$ if it is isomorphic to $M(g, \varrho)$.
#!
#! @Section Define a Delta Function for an element of G
#!
#! @Arguments elem1, field
#!
#! @Returns A callable function <A>delta_elem1(elem2)</A> that
#! returns field one if <A>elem1 = elem2</A> and field zero otherwise.
#! 
#! @Description
DeclareGlobalFunction( "DeltaFunctionForElementOfG" );