# def generate_verilog(sine_table, range_size=10, output_file="output.v"):
#     """
#     Generate Verilog code with if-else conditions based on a sine lookup table.

#     Args:
#         sine_table (list): The input sine wave lookup table.
#         range_size (int): The size of each phase range.
#         output_file (str): The output file name for the Verilog code.
#     """
#     verilog_lines = []
#     verilog_lines.append("// Verilog code generated from sine lookup table\n")

#     for i, value in enumerate(sine_table):
#         start_phase = i * range_size
#         end_phase = start_phase + range_size

#         # Add Verilog code for each bin
#         verilog_lines.append(f"// bin {i + 1}")
#         verilog_lines.append(f"else if (phase >= {start_phase} && phase < {end_phase}) begin")
#         verilog_lines.append(f"    data_sin = 10'd{value};")
#         verilog_lines.append("end")
#         verilog_lines.append("")

#     # Write to output file
#     with open(output_file, "w") as file:
#         file.write("\n".join(verilog_lines))

#     print(f"Verilog code has been generated in {output_file}")

# # Input sine lookup table
# sine_lookup_table = [
#     0, 9, 18, 28, 37, 47, 56, 65, 75, 84,
# 93, 102, 112, 121, 130, 139, 148, 157, 166, 175,
# 184, 193, 201, 210, 218, 227, 235, 244, 252, 260,
# 268, 276, 284, 292, 299, 307, 314, 322, 329, 336,
# 343, 350, 357, 364, 370, 377, 383, 389, 395, 401,
# 407, 412, 418, 423, 429, 434, 438, 443, 448, 452,
# 457, 461, 465, 469, 472, 476, 479, 482, 485, 488,
# 491, 493, 496, 498, 500, 502, 504, 505, 506, 508,
# 509, 509, 510, 511, 511, 511, 511, 511, 510, 510,
# 509, 508, 507, 506, 504, 503, 501, 499, 497, 495,
# 492, 490, 487, 484, 481, 478, 474, 470, 467, 463,
# 459, 454, 450, 446, 441, 436, 431, 426, 421, 415,
# 410, 404, 398, 392, 386, 380, 373, 367, 360, 354,
# 347, 340, 333, 325, 318, 311, 303, 296, 288, 280,
# 272, 264, 256, 248, 239, 231, 223, 214, 206, 197,
# 188, 179, 171, 162, 153, 144, 135, 125, 116, 107,
# 98, 89, 79, 70, 61, 51, 42, 32, 23, 14,
# 4, -5, -15, -24, -33, -43, -52, -62, -71, -80,
# -90, -99, -108, -117, -126, -136, -145, -154, -163, -172,
# -180, -189, -198, -207, -215, -224, -232, -240, -249, -257,
# -265, -273, -281, -289, -297, -304, -312, -319, -326, -334,
# -341, -348, -355, -361, -368, -374, -381, -387, -393, -399,
# -405, -411, -416, -422, -427, -432, -437, -442, -447, -451,
# -455, -460, -464, -468, -471, -475, -479, -482, -485, -488,
# -491, -493, -496, -498, -500, -502, -504, -505, -507, -508,
# -509, -510, -511, -511, -512, -512, -512, -512, -512, -511,
# -510, -510, -509, -507, -506, -505, -503, -501, -499, -497,
# -494, -492, -489, -486, -483, -480, -477, -473, -470, -466,
# -462, -458, -453, -449, -444, -439, -435, -430, -424, -419,
# -413, -408, -402, -396, -390, -384, -378, -371, -365, -358,
# -351, -344, -337, -330, -323, -315, -308, -300, -293, -285,
# -277, -269, -261, -253, -245, -236, -228, -219, -211, -202,
# -194, -185, -176, -167, -158, -149, -140, -131, -122, -113,
# -103, -94, -85, -76, -66, -57, -48, -38, -29, -19,
# -10
# ]

# # Range size for phase bins
# range_size = 3

# # Generate Verilog code
# generate_verilog(sine_lookup_table, range_size)

def generate_verilog(sine_table, range_size=10, output_file="output.v"):
    """
    Generate Verilog code with if-else conditions based on a sine lookup table.

    Args:
        sine_table (list): The input sine wave lookup table.
        range_size (int): The size of each phase range.
        output_file (str): The output file name for the Verilog code.
    """
    verilog_lines = []
    verilog_lines.append("// Verilog code generated from sine lookup table\n")

    for i, value in enumerate(sine_table):
        start_phase = i * range_size
        end_phase = start_phase + range_size

        # Determine Verilog value format
        if value < 0:
            verilog_value = f"-10'sd{abs(value)}"
        else:
            verilog_value = f"10'sd{value}"

        # Add Verilog code for each bin
        verilog_lines.append(f"// bin {i + 1}")
        verilog_lines.append(f"else if (phase >= {start_phase} && phase < {end_phase}) begin")
        verilog_lines.append(f"    data_sin = {verilog_value};")
        verilog_lines.append("end")
        verilog_lines.append("")

    # Write to output file
    with open(output_file, "w") as file:
        file.write("\n".join(verilog_lines))

    print(f"Verilog code has been generated in {output_file}")

# Input sine lookup table
sine_lookup_table = [
    0, 9, 18, 28, 37, 47, 56, 65, 75, 84,
93, 102, 112, 121, 130, 139, 148, 157, 166, 175,
184, 193, 201, 210, 218, 227, 235, 244, 252, 260,
268, 276, 284, 292, 299, 307, 314, 322, 329, 336,
343, 350, 357, 364, 370, 377, 383, 389, 395, 401,
407, 412, 418, 423, 429, 434, 438, 443, 448, 452,
457, 461, 465, 469, 472, 476, 479, 482, 485, 488,
491, 493, 496, 498, 500, 502, 504, 505, 506, 508,
509, 509, 510, 511, 511, 511, 511, 511, 510, 510,
509, 508, 507, 506, 504, 503, 501, 499, 497, 495,
492, 490, 487, 484, 481, 478, 474, 470, 467, 463,
459, 454, 450, 446, 441, 436, 431, 426, 421, 415,
410, 404, 398, 392, 386, 380, 373, 367, 360, 354,
347, 340, 333, 325, 318, 311, 303, 296, 288, 280,
272, 264, 256, 248, 239, 231, 223, 214, 206, 197,
188, 179, 171, 162, 153, 144, 135, 125, 116, 107,
98, 89, 79, 70, 61, 51, 42, 32, 23, 14,
4, -5, -15, -24, -33, -43, -52, -62, -71, -80,
-90, -99, -108, -117, -126, -136, -145, -154, -163, -172,
-180, -189, -198, -207, -215, -224, -232, -240, -249, -257,
-265, -273, -281, -289, -297, -304, -312, -319, -326, -334,
-341, -348, -355, -361, -368, -374, -381, -387, -393, -399,
-405, -411, -416, -422, -427, -432, -437, -442, -447, -451,
-455, -460, -464, -468, -471, -475, -479, -482, -485, -488,
-491, -493, -496, -498, -500, -502, -504, -505, -507, -508,
-509, -510, -511, -511, -512, -512, -512, -512, -512, -511,
-510, -510, -509, -507, -506, -505, -503, -501, -499, -497,
-494, -492, -489, -486, -483, -480, -477, -473, -470, -466,
-462, -458, -453, -449, -444, -439, -435, -430, -424, -419,
-413, -408, -402, -396, -390, -384, -378, -371, -365, -358,
-351, -344, -337, -330, -323, -315, -308, -300, -293, -285,
-277, -269, -261, -253, -245, -236, -228, -219, -211, -202,
-194, -185, -176, -167, -158, -149, -140, -131, -122, -113,
-103, -94, -85, -76, -66, -57, -48, -38, -29, -19,
-10
]

# Range size for phase bins
range_size = 3

# Generate Verilog code
generate_verilog(sine_lookup_table, range_size)