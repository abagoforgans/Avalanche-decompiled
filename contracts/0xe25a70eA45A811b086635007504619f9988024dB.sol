contract main {




// =====================  Runtime code  =====================


address owner;
array of uint256 name;
array of uint256 symbol;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor6;
array of struct stor7;
uint256 stor8;
mapping of uint8 stor9;
mapping of struct stor10;

function name() payable {
    return name[0 len name.length]
}

function getApproved(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x6e4552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[208 len 20]
    return approved[arg1]
}

function ownerOf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[205 len 23]
    return ownerOf[arg1]
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x6c4552433732313a2062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                    mem[206 len 22]
    return balanceOf[address(arg1)]
}

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function sub_a36cc981(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor9[arg1])
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return bool(stor6[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if msg.sender == arg1:
        revert with 0, 'ERC721: approve to caller'
    stor6[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    if Mask(32, 224, arg1) == 0x80ac58cd00000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0x5b5e139f00000000000000000000000000000000000000000000000000000000:
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x724f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_89ae5bde(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ('cd', 4).length > 0
    idx = 0
    while idx < ('cd', 4).length:
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 9
        stor9[address(cd[((32 * idx) + cd[4] + 36)])] = uint8(bool(cd[36]))
        idx = idx + 1
        continue 
}

function updateURI(uint256 arg1, string arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not ownerOf[arg1]:
        revert with 0, 
                    32,
                    46,
                    0x6e45524337323155524953746f726167653a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                    mem[ceil32(arg2.length) + 242 len 18]
    if arg2.length:
        stor7[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
    else:
        stor7[arg1].field_0 = 0
        idx = 0
        while stor7[arg1].length + 31 / 32 > idx:
            stor7[arg1][idx].field_0 = 0
            idx = idx + 1
            continue 
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[205 len 23]
    if arg1 == ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6e4552433732313a20617070726f76616c20746f2063757272656e74206f776e65,
                    mem[197 len 31]
    if ownerOf[arg2] != msg.sender:
        if not stor6[stor3[arg2]][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        56,
                        0x6e4552433732313a20617070726f76652063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f76656420666f7220616c,
                        mem[220 len 8]
    approved[arg2] = arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[205 len 23]
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function getTokens() payable {
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x6c4552433732313a2062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                    mem[206 len 22]
    if not balanceOf[address(msg.sender)]:
        return ''
    require balanceOf[address(msg.sender)] <= test266151307()
    if balanceOf[address(msg.sender)]:
        mem[128 len 32 * balanceOf[address(msg.sender)]] = call.data[calldata.size len 32 * balanceOf[address(msg.sender)]]
    idx = 1
    s = 0
    while idx <= stor8:
        mem[0] = idx
        mem[32] = 3
        if not ownerOf[idx]:
            revert with 0, 
                        32,
                        41,
                        0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                        mem[(32 * balanceOf[address(msg.sender)]) + 237 len 23]
        if ownerOf[idx] != msg.sender:
            idx = idx + 1
            s = s
            continue 
        require s < balanceOf[address(msg.sender)]
        mem[(32 * s) + 128] = idx
        idx = idx + 1
        s = s + 1
        continue 
    mem[(32 * balanceOf[address(msg.sender)]) + 192 len floor32(balanceOf[address(msg.sender)])] = mem[128 len floor32(balanceOf[address(msg.sender)])]
    return Array(len=balanceOf[address(msg.sender)], data=mem[128 len floor32(balanceOf[address(msg.sender)])], mem[(32 * balanceOf[address(msg.sender)]) + floor32(balanceOf[address(msg.sender)]) + 192 len (32 * balanceOf[address(msg.sender)]) - floor32(balanceOf[address(msg.sender)])]), 
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x734552433732313a206f70657261746f7220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[208 len 20]
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[205 len 23]
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        44,
                        0x6e4552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65,
                        mem[208 len 20]
        if approved[arg3] != msg.sender:
            if not stor6[stor3[arg3]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            49,
                            0x724552433732313a207472616e736665722063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f7665,
                            mem[213 len 15]
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[205 len 23]
    if ownerOf[arg3] != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x734552433732313a207472616e736665722066726f6d20696e636f7272656374206f776e65,
                    mem[201 len 27]
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x724552433732313a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[200 len 28]
    approved[arg3] = 0
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[205 len 23]
    emit Approval(ownerOf[arg3], 0, arg3);
    balanceOf[address(arg1)]--
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
}

function sub_8bb76330(?) payable {
    require calldata.size - 4 >= 32
    mem[32] = 10
    mem[96] = stor10[arg1][1].length
    mem[128] = stor10[arg1][1].field_0
    idx = 128
    s = 0
    while stor10[arg1][1].length + 96 > idx:
        mem[idx + 32] = stor10[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(stor10[arg1][1].length) + ceil32(stor10[arg1][2].length) + 160
    mem[ceil32(stor10[arg1][1].length) + 128] = stor10[arg1][2].length
    mem[0] = sha3(arg1, 10) + 2
    mem[ceil32(stor10[arg1][1].length) + 160] = stor10[arg1][2].field_0
    idx = ceil32(stor10[arg1][1].length) + 160
    s = 0
    while ceil32(stor10[arg1][1].length) + stor10[arg1][2].length + 128 > idx:
        mem[idx + 32] = stor10[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor10[arg1][1].length) + ceil32(stor10[arg1][2].length) + 160] = stor10[arg1].field_0
    mem[ceil32(stor10[arg1][1].length) + ceil32(stor10[arg1][2].length) + 256] = stor10[arg1].field_768
    mem[ceil32(stor10[arg1][1].length) + ceil32(stor10[arg1][2].length) + 192] = 128
    mem[ceil32(stor10[arg1][1].length) + ceil32(stor10[arg1][2].length) + 288] = stor10[arg1][1].length
    mem[ceil32(stor10[arg1][1].length) + ceil32(stor10[arg1][2].length) + 320 len ceil32(stor10[arg1][1].length)] = mem[128 len ceil32(stor10[arg1][1].length)]
    mem[ceil32(stor10[arg1][1].length) + ceil32(stor10[arg1][2].length) + 224] = stor10[arg1][1].length + 160
    mem[stor10[arg1][1].length + ceil32(stor10[arg1][1].length) + ceil32(stor10[arg1][2].length) + 320] = stor10[arg1][2].length
    mem[stor10[arg1][1].length + ceil32(stor10[arg1][1].length) + ceil32(stor10[arg1][2].length) + 352 len ceil32(stor10[arg1][2].length)] = mem[ceil32(stor10[arg1][1].length) + 160 len ceil32(stor10[arg1][2].length)]
    if not stor10[arg1][2].length % 32:
        return stor10[arg1].field_0, 
               Array(len=stor10[arg1][1].length, data=mem[128 len ceil32(stor10[arg1][1].length)], mem[(2 * ceil32(stor10[arg1][1].length)) + ceil32(stor10[arg1][2].length) + 320 len stor10[arg1][2].length + stor10[arg1][1].length + -ceil32(stor10[arg1][1].length) + 32]),
               stor10[arg1][1].length + 160,
               stor10[arg1].field_768
    mem[floor32(stor10[arg1][2].length) + stor10[arg1][1].length + ceil32(stor10[arg1][1].length) + ceil32(stor10[arg1][2].length) + 352] = mem[floor32(stor10[arg1][2].length) + stor10[arg1][1].length + ceil32(stor10[arg1][1].length) + ceil32(stor10[arg1][2].length) + -stor10[arg1][2].length % 32 + 384 len stor10[arg1][2].length % 32]
    return stor10[arg1].field_0, 
           Array(len=stor10[arg1][1].length, data=mem[128 len ceil32(stor10[arg1][1].length)], mem[(2 * ceil32(stor10[arg1][1].length)) + ceil32(stor10[arg1][2].length) + 320 len floor32(stor10[arg1][2].length) + stor10[arg1][1].length + -ceil32(stor10[arg1][1].length) + 64]),
           stor10[arg1][1].length + 160,
           stor10[arg1].field_768
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not ownerOf[arg3]:
        revert with 0, 32, 44, 0x734552433732313a206f70657261746f7220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[240 len 20]
    if not ownerOf[arg3]:
        revert with 0, 32, 41, 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[237 len 23]
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0, 32, 44, 0x6e4552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[240 len 20]
        if approved[arg3] != msg.sender:
            if not stor6[stor3[arg3]][address(msg.sender)]:
                revert with 0, 
                            32,
                            49,
                            0x724552433732313a207472616e736665722063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f7665,
                            mem[245 len 15]
    if not ownerOf[arg3]:
        revert with 0, 32, 41, 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[237 len 23]
    if ownerOf[arg3] != arg1:
        revert with 0, 32, 37, 0x734552433732313a207472616e736665722066726f6d20696e636f7272656374206f776e65, mem[233 len 27]
    if not arg2:
        revert with 0, 32, 36, 0x724552433732313a207472616e7366657220746f20746865207a65726f20616464726573, mem[232 len 28]
    approved[arg3] = 0
    if not ownerOf[arg3]:
        revert with 0, 32, 41, 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[237 len 23]
    emit Approval(ownerOf[arg3], 0, arg3);
    balanceOf[address(arg1)]--
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
        if ext_code.hash(arg2):
            mem[228] = 128
            mem[260] = 0
            mem[292 len 0] = None
            require ext_code.size(arg2)
            call arg2.0x150b7a02 with:
                 gas gas_remaining wei
                args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
            if not ext_call.success:
                if not return_data.size:
                    revert with 0, 32, 50, 0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465, 0
                if not return_data.size:
                    revert with 0, 
                                32,
                                50,
                                0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                mem[ceil32(return_data.size) + 247 len 14]
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                revert with 0, 32, 50, 0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465, 0
}

function sub_8aea8679(?) payable {
    require calldata.size - 4 >= 160
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + arg2.length + 160] = 0
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = arg3.length
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len arg3.length] = arg3[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + arg3.length + 192] = 0
    stor8++
    if not arg5:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[stor8]:
        revert with 0, 'ERC721: token already minted'
    balanceOf[address(arg5)]++
    ownerOf[stor8] = arg5
    emit Transfer(0, arg5, stor8);
    if not ownerOf[stor8]:
        revert with 0, 
                    32,
                    46,
                    0x6e45524337323155524953746f726167653a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 306 len 18]
    if arg3.length:
        stor7[stor8][].field_0 = Array(len=arg3.length, data=arg3[all])
    else:
        stor7[stor8].field_0 = 0
        idx = 0
        while stor7[stor8].length + 31 / 32 > idx:
            stor7[stor8][idx].field_0 = 0
            idx = idx + 1
            continue 
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 192] = msg.sender
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 224] = 96
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 256] = ceil32(arg1.length) + 128
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 288] = arg4
    stor10[stor8].field_0 = msg.sender
    if arg1.length:
        stor10[stor8][1][].field_0 = Array(len=arg1.length, data=arg1[all])
    else:
        stor10[stor8].field_256 = 0
        idx = 0
        while stor10[stor8][1].length + 31 / 32 > idx:
            stor10[stor8][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
    if Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]:
        stor10[stor8][2][].field_0 = Array(len=Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)], data=mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])
    else:
        stor10[stor8].field_512 = 0
        idx = 0
        while stor10[stor8][2].length + 31 / 32 > idx:
            stor10[stor8][idx + 2].field_0 = 0
            idx = idx + 1
            continue 
    stor10[stor8].field_768 = arg4
    return stor8
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    if not ownerOf[arg3]:
        revert with 0, 
                    32,
                    44,
                    0x734552433732313a206f70657261746f7220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[ceil32(arg4.length) + 240 len 20]
    if not ownerOf[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[ceil32(arg4.length) + 237 len 23]
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0, 
                        32,
                        44,
                        0x6e4552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65,
                        mem[ceil32(arg4.length) + 240 len 20]
        if approved[arg3] != msg.sender:
            if not stor6[stor3[arg3]][address(msg.sender)]:
                revert with 0, 
                            32,
                            49,
                            0x724552433732313a207472616e736665722063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f7665,
                            mem[ceil32(arg4.length) + 245 len 15]
    if not ownerOf[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[ceil32(arg4.length) + 237 len 23]
    if ownerOf[arg3] != arg1:
        revert with 0, 
                    32,
                    37,
                    0x734552433732313a207472616e736665722066726f6d20696e636f7272656374206f776e65,
                    mem[ceil32(arg4.length) + 233 len 27]
    if not arg2:
        revert with 0, 
                    32,
                    36,
                    0x724552433732313a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[ceil32(arg4.length) + 232 len 28]
    approved[arg3] = 0
    if not ownerOf[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[ceil32(arg4.length) + 237 len 23]
    emit Approval(ownerOf[arg3], 0, arg3);
    balanceOf[address(arg1)]--
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
        if ext_code.hash(arg2):
            mem[ceil32(arg4.length) + 128] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
            mem[ceil32(arg4.length) + 228] = 128
            mem[ceil32(arg4.length) + 260] = arg4.length
            mem[ceil32(arg4.length) + 292 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
            require ext_code.size(arg2)
            call arg2 with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
            if not ext_call.success:
                if not return_data.size:
                    if not arg4.length:
                        revert with 0, 32, 50, 0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465, 0
                    revert with arg4[all]
                if not return_data.size:
                    revert with 0, 
                                32,
                                50,
                                0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                mem[ceil32(arg4.length) + ceil32(return_data.size) + 247 len 14]
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                revert with 0, 32, 50, 0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465, 0
}

function tokenURI(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    49,
                    0x6e45524337323155524953746f726167653a2055524920717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[213 len 15]
    mem[32] = 7
    mem[96] = stor7[arg1].length
    mem[0] = sha3(arg1, 7)
    mem[128] = stor7[arg1].field_0
    idx = 128
    s = 0
    while stor7[arg1].length + 96 > idx:
        mem[idx + 32] = stor7[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(stor7[arg1].length) + 192
    mem[ceil32(stor7[arg1].length) + 128] = 21
    mem[ceil32(stor7[arg1].length) + 160] = 'https://ipfs.io/ipfs/'
    if stor7[arg1].length > 0:
        mem[ceil32(stor7[arg1].length) + 224 len 0] = None
        mem[ceil32(stor7[arg1].length) + 235 len 21] = Mask(168, 0, 'https://ipfs.io/ipfs/')
        mem[ceil32(stor7[arg1].length) + 245 len floor32(stor7[arg1].length)] = mem[128 len floor32(stor7[arg1].length)]
        mem[ceil32(stor7[arg1].length) + floor32(stor7[arg1].length) + 245] = mem[floor32(stor7[arg1].length) + -stor7[arg1].length % 32 + 160 len stor7[arg1].length % 32] or Mask(8 * -stor7[arg1].length % 32 + 32, -(8 * -stor7[arg1].length % 32 + 32) + 256, mem[ceil32(stor7[arg1].length) + floor32(stor7[arg1].length) + 245])
        mem[64] = stor7[arg1].length + ceil32(stor7[arg1].length) + 245
        mem[stor7[arg1].length + ceil32(stor7[arg1].length) + 245] = 32
        mem[stor7[arg1].length + ceil32(stor7[arg1].length) + 277] = mem[ceil32(stor7[arg1].length) + 192]
        mem[stor7[arg1].length + ceil32(stor7[arg1].length) + 309 len ceil32(mem[ceil32(stor7[arg1].length) + 192])] = mem[ceil32(stor7[arg1].length) + 224 len ceil32(mem[ceil32(stor7[arg1].length) + 192])]
        if not mem[ceil32(stor7[arg1].length) + 192] % 32:
            return 32, mem[stor7[arg1].length + ceil32(stor7[arg1].length) + 277 len mem[ceil32(stor7[arg1].length) + 192] + 32]
        mem[floor32(mem[ceil32(stor7[arg1].length) + 192]) + stor7[arg1].length + ceil32(stor7[arg1].length) + 309] = mem[floor32(mem[ceil32(stor7[arg1].length) + 192]) + stor7[arg1].length + ceil32(stor7[arg1].length) + -(mem[ceil32(stor7[arg1].length) + 192] % 32) + 341 len mem[ceil32(stor7[arg1].length) + 192] % 32]
        return 32, mem[stor7[arg1].length + ceil32(stor7[arg1].length) + 277 len floor32(mem[ceil32(stor7[arg1].length) + 192]) + 64]
    mem[0] = arg1
    mem[32] = 3
    if not ownerOf[arg1]:
        revert with 0, 
                    32,
                    47,
                    0x6e4552433732314d657461646174613a2055524920717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[ceil32(stor7[arg1].length) + 307 len 17]
    if not arg1:
        mem[ceil32(stor7[arg1].length) + 352 len 0] = None
        mem[ceil32(stor7[arg1].length) + 363 len 21] = Mask(168, 0, 'https://ipfs.io/ipfs/')
        mem[ceil32(stor7[arg1].length) + 373 len 0] = None
        mem[ceil32(stor7[arg1].length) + 373 len 31] = Mask(88, 0, 'https://ipfs.io/ipfs/'), mem[ceil32(stor7[arg1].length) + 384 len 20]
        mem[64] = ceil32(stor7[arg1].length) + 374
        mem[ceil32(stor7[arg1].length) + 374] = 32
        mem[ceil32(stor7[arg1].length) + 406] = mem[ceil32(stor7[arg1].length) + 320]
        mem[ceil32(stor7[arg1].length) + 438 len ceil32(mem[ceil32(stor7[arg1].length) + 320])] = mem[ceil32(stor7[arg1].length) + 352 len ceil32(mem[ceil32(stor7[arg1].length) + 320])]
        if not mem[ceil32(stor7[arg1].length) + 320] % 32:
            return 32, mem[ceil32(stor7[arg1].length) + 406 len mem[ceil32(stor7[arg1].length) + 320] + 32]
        mem[floor32(mem[ceil32(stor7[arg1].length) + 320]) + ceil32(stor7[arg1].length) + 438] = mem[floor32(mem[ceil32(stor7[arg1].length) + 320]) + ceil32(stor7[arg1].length) + -(mem[ceil32(stor7[arg1].length) + 320] % 32) + 470 len mem[ceil32(stor7[arg1].length) + 320] % 32]
        return Array(len=mem[ceil32(stor7[arg1].length) + 320], data=mem[ceil32(stor7[arg1].length) + 438 len floor32(mem[ceil32(stor7[arg1].length) + 320]) + 32]), 
    s = 0
    idx = arg1
    while idx:
        s = s + 1
        idx = idx / 10
        continue 
    require s <= test266151307()
    mem[ceil32(stor7[arg1].length) + 256] = s
    mem[64] = ceil32(stor7[arg1].length) + ceil32(s) + 288
    if s:
        mem[ceil32(stor7[arg1].length) + 288 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        require t - 1 < mem[ceil32(stor7[arg1].length) + 256]
        mem[t + ceil32(stor7[arg1].length) + 287 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[ceil32(stor7[arg1].length) + ceil32(s) + 320 len 0] = None
    mem[ceil32(stor7[arg1].length) + ceil32(s) + 331 len 21] = Mask(168, 0, 'https://ipfs.io/ipfs/')
    mem[ceil32(stor7[arg1].length) + ceil32(s) + 341 len floor32(mem[ceil32(stor7[arg1].length) + 256])] = mem[ceil32(stor7[arg1].length) + 288 len floor32(mem[ceil32(stor7[arg1].length) + 256])]
    mem[ceil32(stor7[arg1].length) + ceil32(s) + floor32(mem[ceil32(stor7[arg1].length) + 256]) + -(mem[ceil32(stor7[arg1].length) + 256] % 32) + 373 len mem[ceil32(stor7[arg1].length) + 256] % 32] = mem[ceil32(stor7[arg1].length) + floor32(mem[ceil32(stor7[arg1].length) + 256]) + -(mem[ceil32(stor7[arg1].length) + 256] % 32) + 320 len mem[ceil32(stor7[arg1].length) + 256] % 32]
    mem[64] = mem[ceil32(stor7[arg1].length) + 256] + ceil32(stor7[arg1].length) + ceil32(s) + 341
    mem[mem[ceil32(stor7[arg1].length) + 256] + ceil32(stor7[arg1].length) + ceil32(s) + 341] = 32
    mem[mem[ceil32(stor7[arg1].length) + 256] + ceil32(stor7[arg1].length) + ceil32(s) + 373] = mem[ceil32(stor7[arg1].length) + ceil32(s) + 288]
    mem[mem[ceil32(stor7[arg1].length) + 256] + ceil32(stor7[arg1].length) + ceil32(s) + 405 len ceil32(mem[ceil32(stor7[arg1].length) + ceil32(s) + 288])] = mem[ceil32(stor7[arg1].length) + ceil32(s) + 320 len ceil32(mem[ceil32(stor7[arg1].length) + ceil32(s) + 288])]
    if not mem[ceil32(stor7[arg1].length) + ceil32(s) + 288] % 32:
        return 32, mem[mem[ceil32(stor7[arg1].length) + 256] + ceil32(stor7[arg1].length) + ceil32(s) + 373 len mem[ceil32(stor7[arg1].length) + ceil32(s) + 288] + 32], 
    mem[floor32(mem[ceil32(stor7[arg1].length) + ceil32(s) + 288]) + mem[ceil32(stor7[arg1].length) + 256] + ceil32(stor7[arg1].length) + ceil32(s) + 405] = mem[floor32(mem[ceil32(stor7[arg1].length) + ceil32(s) + 288]) + mem[ceil32(stor7[arg1].length) + 256] + ceil32(stor7[arg1].length) + ceil32(s) + -(mem[ceil32(stor7[arg1].length) + ceil32(s) + 288] % 32) + 437 len mem[ceil32(stor7[arg1].length) + ceil32(s) + 288] % 32]
    return Array(len=mem[ceil32(stor7[arg1].length) + ceil32(s) + 288], data=mem[mem[ceil32(stor7[arg1].length) + 256] + ceil32(stor7[arg1].length) + ceil32(s) + 405 len floor32(mem[ceil32(stor7[arg1].length) + ceil32(s) + 288]) + 32]), 
}



}
