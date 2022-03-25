contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;

function owner() payable {
    return owner
}

function isWhitelistAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x65526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    return bool(stor1[address(arg1)])
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x2e4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function renounceWhitelistAdmin() payable {
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x65526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x2e526f6c65733a206163636f756e7420646f6573206e6f74206861766520726f6c,
                    mem[197 len 31]
    stor1[address(msg.sender)] = 0
    emit WhitelistAdminRemoved(msg.sender);
}

function addWhitelistAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x65526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    64,
                    0x7357686974656c69737441646d696e526f6c653a2063616c6c657220646f6573206e6f742068617665207468652057686974656c69737441646d696e20726f6c
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x65526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if stor1[address(arg1)]:
        revert with 0, 'Roles: account already has role'
    stor1[address(arg1)] = 1
    emit WhitelistAdminAdded(arg1);
}

function sub_16a44da3(?) payable {
    require calldata.size - 4 >= 128
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= 4294967296
    require cd[68] + 36 <= calldata.size
    require ('cd', 68).length <= 4294967296 and cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] <= 4294967296
    require cd[100] + 36 <= calldata.size
    require ('cd', 100).length <= 4294967296 and cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    if not ('cd', 36).length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    72,
                    0x73457263313135354d756c74694261746368237472616e736665724d756c746942617463683a20706c6561736520616464206174206c65617374206f6e6520726563697069656e74,
                    mem[236 len 24]
    if not ('cd', 68).length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    66,
                    0xfe457263313135354d756c74694261746368237472616e736665724d756c746942617463683a20706c6561736520616464206174206c65617374206f6e65204e4654,
                    mem[230 len 30]
    if ('cd', 100).length != ('cd', 68).length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    71,
                    0x65457263313135354d756c74694261746368237472616e736665724d756c746942617463683a2069647320616e6420616d6f756e74732064696666657220696e206c656e677468,
                    mem[235 len 25]
    idx = 0
    while idx < ('cd', 36).length:
        mem[96] = 0x2eb2c2d600000000000000000000000000000000000000000000000000000000
        mem[100] = msg.sender
        mem[132] = address(cd[((32 * idx) + cd[36] + 36)])
        mem[164] = 160
        mem[260] = ('cd', 68).length
        mem[292 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
        mem[(32 * ('cd', 68).length) + 292] = 0
        mem[196] = floor32(('cd', 68).length) + 192
        mem[floor32(('cd', 68).length) + 292] = ('cd', 100).length
        mem[floor32(('cd', 68).length) + 324 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
        mem[floor32(('cd', 68).length) + (32 * ('cd', 100).length) + 324] = 0
        mem[228] = floor32(('cd', 68).length) + floor32(('cd', 100).length) + 224
        mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 324] = 0
        require ext_code.size(address(cd[4]))
        call address(cd[4]).safeBatchTransferFrom(address rg1, address rg2, uint256[] rg3, uint256[] rg4, bytes rg5) with:
             gas gas_remaining wei
            args msg.sender, address(cd[((32 * idx) + cd[36] + 36)]), 160, floor32(('cd', 68).length) + 192, floor32(('cd', 68).length) + floor32(('cd', 100).length) + 224, ('cd', 68).length, mem[292 len floor32(('cd', 68).length) + 32], call.data[cd[100] + 36 len floor32(('cd', 100).length)], 0, mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 356]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}



}
