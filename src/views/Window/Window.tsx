import Roact from "@rbxts/roact";
import { hooked } from "@rbxts/roact-hooked";
import { useTheme } from "hooks/use-theme";
import { hex } from "utils/color3";
import { px, scale } from "utils/udim2";

function Window() {
	const navbarTheme = useTheme("navbar");
	const homeTheme = useTheme("home");
	const titleTheme = homeTheme.title;

	return (
		<frame
			Size={scale(1, 1)}
			Position={scale(0, 0)}
			BackgroundColor3={hex("#000000")}
			BackgroundTransparency={0.4}
			BorderSizePixel={0}
		>
			<frame
				Size={new UDim2(0.42, 0, 0.34, 0)}
				Position={new UDim2(0.5, 0, 0.5, 0)}
				AnchorPoint={new Vector2(0.5, 0.5)}
				BackgroundColor3={navbarTheme.background}
				BackgroundTransparency={navbarTheme.transparency}
				BorderSizePixel={0}
			>
				<uicorner CornerRadius={new UDim(0, 12)} />
				<frame
					Size={new UDim2(1, 0, 0, 48)}
					Position={scale(0, 0)}
					BackgroundColor3={titleTheme.background}
					BackgroundTransparency={titleTheme.transparency}
					BorderSizePixel={0}
				>
					<uicorner CornerRadius={new UDim(0, 12)} />
					<frame Size={new UDim2(1, 0, 0, 1)} Position={new UDim2(0, 0, 1, -1)} BackgroundColor3={hex("#FFFFFF")} BackgroundTransparency={0.82} BorderSizePixel={0} />
					<textlabel
						Text="Orca Window"
						Font={Enum.Font.GothamBold}
						TextSize={16}
						TextColor3={titleTheme.foreground}
						BackgroundTransparency={1}
						Position={new UDim2(0, 16, 0, 0)}
						Size={new UDim2(1, -32, 1, 0)}
						TextXAlignment={Enum.TextXAlignment.Left}
					/>
				</frame>

				<frame
					Size={new UDim2(1, -24, 1, -72)}
					Position={new UDim2(0, 12, 0, 60)}
					BackgroundTransparency={1}
				>
					<textlabel
						Text="Simple window themed by Orca"
						Font={Enum.Font.Gotham}
						TextSize={16}
						TextColor3={navbarTheme.foreground}
						BackgroundTransparency={1}
						Position={scale(0, 0)}
						Size={new UDim2(1, 0, 0, 24)}
						TextXAlignment={Enum.TextXAlignment.Left}
					/>
					<textlabel
						Text="Use this as a base for your own UI library."
						Font={Enum.Font.Gotham}
						TextSize={13}
						TextColor3={navbarTheme.foreground}
						BackgroundTransparency={1}
						Position={new UDim2(0, 0, 0, 34)}
						Size={new UDim2(1, 0, 0, 24)}
						TextXAlignment={Enum.TextXAlignment.Left}
					/>
					<textbutton
						Text="Close"
						Font={Enum.Font.GothamBold}
						TextSize={13}
						TextColor3={titleTheme.foreground}
						BackgroundColor3={titleTheme.background}
						BackgroundTransparency={0.1}
						BorderSizePixel={0}
						Size={new UDim2(0, 92, 0, 32)}
						Position={new UDim2(1, -104, 1, -40)}
						AnchorPoint={new Vector2(1, 1)}
						AutoButtonColor={false}
					>
						<uicorner CornerRadius={new UDim(0, 8)} />
					</textbutton>
				</frame>
			</frame>
		</frame>
	);
}

export default hooked(Window);
