rollout test "--test--"

(

        button bt1 "  make material id  "

        on bt1 pressed do (

            a = #()

			for i = 1 to selection.count do a[i] = selection[i]

			macros.run "Modifier Stack" "Convert_to_Poly"

			for i = 1 to selection.count do (
				subobjectLevel = 0
				select a[i]
				subobjectLevel = 5
				a[i].EditablePoly.SetSelection #Face #{1..16}
				$.EditablePoly.setMaterialIndex i 1
			)

        )

)

rof=newrolloutfloater "<<test>>" 200 200

addrollout test rof