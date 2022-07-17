contract main {




// =====================  Runtime code  =====================


const sub_e1f1c4a7(?) = 10000


address govAddress;
mapping of uint256 sub_71a6a790;
mapping of uint256 sub_1582a018;
mapping of struct tiers;
mapping of uint8 stor4;
mapping of address sub_c8b3c460;
mapping of uint256 sub_85725b58;

function tiers(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return tiers[arg1].field_0, tiers[arg1].field_256
}

function gov() payable {
    return govAddress
}

function sub_1582a018(?) payable {
    require calldata.size - 4 >= 32
    return sub_1582a018[arg1]
}

function isHandler(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor4[arg1])
}

function sub_71a6a790(?) payable {
    require calldata.size - 4 >= 32
    return sub_71a6a790[arg1]
}

function sub_85725b58(?) payable {
    require calldata.size - 4 >= 32
    return sub_85725b58[arg1]
}

function sub_c8b3c460(?) payable {
    require calldata.size - 4 >= 32
    return address(sub_c8b3c460[arg1])
}

function _fallback() payable {
    revert
}

function sub_e1e01bf3(?) payable {
    require calldata.size - 4 >= 32
    sub_85725b58[address(msg.sender)] = arg1
    emit 0x43825f14: msg.sender, arg1
}

function setGov(address arg1) payable {
    require calldata.size - 4 >= 32
    if govAddress != msg.sender:
        revert with 0, 32, 21, 0xfe476f7665726e61626c653a20666f7262696464656e00000000000000000000
    govAddress = arg1
}

function sub_56b4b2ad(?) payable {
    require calldata.size - 4 >= 64
    if not stor4[msg.sender]:
        revert with 0, 'ReferralStorage: forbidden'
    sub_85725b58[address(arg1)] = arg2
    emit 0x43825f14: address(arg1), arg2
}

function sub_534ef883(?) payable {
    require calldata.size - 4 >= 32
    if not sub_85725b58[address(arg1)]:
        return sub_85725b58[address(arg1)], 0
    return sub_85725b58[address(arg1)], address(sub_c8b3c460[stor6[address(arg1)]])
}

function sub_3fb8b323(?) payable {
    require calldata.size - 4 >= 64
    if govAddress != msg.sender:
        revert with 0, 32, 21, 0xfe476f7665726e61626c653a20666f7262696464656e00000000000000000000
    sub_1582a018[address(arg1)] = arg2
    emit 0x7696855c: address(arg1), arg2
}

function setHandler(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if govAddress != msg.sender:
        revert with 0, 32, 21, 0xfe476f7665726e61626c653a20666f7262696464656e00000000000000000000
    stor4[address(arg1)] = uint8(arg2)
    emit 0xd373464a: address(arg1), arg2
}

function sub_ed843134(?) payable {
    require calldata.size - 4 >= 64
    if not arg1:
        revert with 0, 'eReferralStorage: invalid _code'
    if address(sub_c8b3c460[arg1]) != msg.sender:
        revert with 0, 'ReferralStorage: forbidden'
    address(sub_c8b3c460[arg1]) = arg2
    emit 0x56408567: msg.sender, address(arg2), arg1
}

function sub_dfcfa250(?) payable {
    require calldata.size - 4 >= 64
    if govAddress != msg.sender:
        revert with 0, 32, 21, 0xfe476f7665726e61626c653a20666f7262696464656e00000000000000000000
    if not arg1:
        revert with 0, 'eReferralStorage: invalid _code'
    address(sub_c8b3c460[arg1]) = arg2
    emit 0x6431f88c: arg1, arg2
}

function sub_9c8e2de9(?) payable {
    require calldata.size - 4 >= 32
    if arg1 > 10000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x73526566657272616c53746f726167653a20696e76616c696420646973636f756e7453686172,
                    mem[202 len 26]
    sub_71a6a790[msg.sender] = arg1
    emit 0xbd224f39: msg.sender, arg1
}

function sub_36def2c8(?) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0, 'eReferralStorage: invalid _code'
    if address(sub_c8b3c460[arg1]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x526566657272616c53746f726167653a20636f646520616c726561647920657869737400,
                    mem[200 len 28]
    uint256(sub_c8b3c460[arg1]) = msg.sender or Mask(96, 160, uint256(sub_c8b3c460[arg1]))
    emit 0x4f82286a: msg.sender, arg1
}

function setTier(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if govAddress != msg.sender:
        revert with 0, 32, 21, 0xfe476f7665726e61626c653a20666f7262696464656e00000000000000000000
    if arg2 > 10000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x526566657272616c53746f726167653a20696e76616c696420746f74616c526562617400,
                    mem[200 len 28]
    if arg3 > 10000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x73526566657272616c53746f726167653a20696e76616c696420646973636f756e7453686172,
                    mem[202 len 26]
    tiers[arg1].field_0 = arg2
    tiers[arg1].field_256 = arg3
    emit 0x4ebd23a4: arg1, arg2, arg3
}



}
