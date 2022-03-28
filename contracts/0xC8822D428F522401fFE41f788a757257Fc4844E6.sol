contract main {




// =====================  Runtime code  =====================


const sub_5a3d1146(?) = (12 * 3600)

const sub_6d91fa46(?) = (24 * 3600)

const sub_8a42a459(?) = (12 * 3600)

const sub_8affe64c(?) = (24 * 3600)

const sub_bf1410e6(?) = (12 * 3600)

const sub_ce9a6cac(?) = (12 * 3600)


uint32 stor0;
uint256 sub_f0756a90;
uint16 stor1;
uint16 sub_f946bd19; offset 160
address sub_1b711859Address;
uint32 stor2;
uint256 sub_e5222c10;
uint256 sub_89f0487d;
uint16 sub_6927a246;
uint256 sub_422130c7;
uint256 sub_44be4692;
address sub_6880afa9Address;
address sub_df3f62feAddress;
address managerAddress;
address sub_208362c1Address;
address BIRDAddress;
address pendingOwner;
mapping of uint256 timelock;
uint256 stor10A8;
uint256 stor26B4;
uint256 storA485;
uint256 storA504;
uint256 storAFAF;

function sub_1b711859(?) payable {
    return sub_1b711859Address
}

function sub_208362c1(?) payable {
    return sub_208362c1Address
}

function sub_422130c7(?) payable {
    return sub_422130c7
}

function sub_44be4692(?) payable {
    return sub_44be4692
}

function manager() payable {
    return managerAddress
}

function sub_6880afa9(?) payable {
    return sub_6880afa9Address
}

function sub_6927a246(?) payable {
    return sub_6927a246
}

function sub_89f0487d(?) payable {
    return sub_89f0487d
}

function timelock(uint8 arg1) payable {
    require calldata.size - 4 >= 32
    return timelock[arg1]
}

function sub_df3f62fe(?) payable {
    return sub_df3f62feAddress
}

function pendingOwner() payable {
    return pendingOwner
}

function sub_e5222c10(?) payable {
    return uint256(sub_e5222c10)
}

function BIRD() payable {
    return BIRDAddress
}

function sub_f0756a90(?) payable {
    return uint256(sub_f0756a90)
}

function sub_f946bd19(?) payable {
    return sub_f946bd19
}

function _fallback() payable {
    revert
}

function sub_06fb88dc(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == managerAddress
    storAFAF = block.timestamp + (12 * 3600)
    sub_422130c7 = arg1
}

function sub_49c2f115(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == managerAddress
    storA485 = block.timestamp + (24 * 3600)
    sub_df3f62feAddress = arg1
}

function proposeOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == managerAddress
    timelock[0] = block.timestamp + (24 * 3600)
    pendingOwner = arg1
}

function sub_e02541b6(?) payable {
    require calldata.size - 4 >= 64
    require msg.sender == managerAddress
    storA504 = block.timestamp + (12 * 3600)
    sub_44be4692 = arg2
    sub_6880afa9Address = arg1
}

function sub_1c170bef(?) payable {
    require calldata.size - 4 >= 96
    require msg.sender == managerAddress
    stor26B4 = block.timestamp + (12 * 3600)
    sub_89f0487d = arg2
    sub_6927a246 = arg3
    uint256(sub_e5222c10) = arg1
}

function sub_124bb2b6(?) payable {
    require calldata.size - 4 >= 96
    require msg.sender == managerAddress
    stor10A8 = block.timestamp + (12 * 3600)
    uint256(sub_f0756a90) = arg1
    sub_1b711859Address = arg2
    sub_f946bd19 = arg3
}

function sub_ef39197e(?) payable {
    if not storA485:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe59616b2042617365642054696d656c6f636b3a3a656e666f72636554696d656c6f63,
                    mem[199 len 29]
    if timelock[6] > block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe59616b2042617365642054696d656c6f636b3a3a656e666f72636554696d656c6f63,
                    mem[199 len 29]
    require ext_code.size(BIRDAddress)
    call BIRDAddress.setMinter(address rg1) with:
         gas gas_remaining wei
        args sub_df3f62feAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    timelock[6] = 0
}

function sub_35963245(?) payable {
    if not storAFAF:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe59616b2042617365642054696d656c6f636b3a3a656e666f72636554696d656c6f63,
                    mem[199 len 29]
    if timelock[4] > block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe59616b2042617365642054696d656c6f636b3a3a656e666f72636554696d656c6f63,
                    mem[199 len 29]
    require ext_code.size(sub_208362c1Address)
    call sub_208362c1Address.updateEmissionRate(uint256 rg1) with:
         gas gas_remaining wei
        args sub_422130c7
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    timelock[4] = 0
}

function sub_71da892f(?) payable {
    if not storA504:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe59616b2042617365642054696d656c6f636b3a3a656e666f72636554696d656c6f63,
                    mem[199 len 29]
    if timelock[5] > block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe59616b2042617365642054696d656c6f636b3a3a656e666f72636554696d656c6f63,
                    mem[199 len 29]
    require ext_code.size(BIRDAddress)
    call BIRDAddress.mint(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args sub_6880afa9Address, sub_44be4692
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    timelock[5] = 0
}

function sub_5003549d(?) payable {
    if not timelock[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe59616b2042617365642054696d656c6f636b3a3a656e666f72636554696d656c6f63,
                    mem[199 len 29]
    if timelock[0] > block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe59616b2042617365642054696d656c6f636b3a3a656e666f72636554696d656c6f63,
                    mem[199 len 29]
    if not pendingOwner:
        revert with 0, 'Owner cannot be 0 address'
    require ext_code.size(sub_208362c1Address)
    call sub_208362c1Address.0xf2fde38b with:
         gas gas_remaining wei
        args pendingOwner
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    pendingOwner = 0
    timelock[0] = 0
}

function sub_533d3b66(?) payable {
    if not stor26B4:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe59616b2042617365642054696d656c6f636b3a3a656e666f72636554696d656c6f63,
                    mem[199 len 29]
    if timelock[3] > block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe59616b2042617365642054696d656c6f636b3a3a656e666f72636554696d656c6f63,
                    mem[199 len 29]
    require ext_code.size(sub_208362c1Address)
    call sub_208362c1Address.set(uint256 rg1, uint256 rg2, uint16 rg3, bool rg4) with:
         gas gas_remaining wei
        args 0, uint32(stor2), sub_89f0487d, sub_6927a246, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_208362c1Address)
    call sub_208362c1Address.massUpdatePools() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    timelock[3] = 0
}

function sub_b4f6133e(?) payable {
    if not stor10A8:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe59616b2042617365642054696d656c6f636b3a3a656e666f72636554696d656c6f63,
                    mem[199 len 29]
    if timelock[2] > block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe59616b2042617365642054696d656c6f636b3a3a656e666f72636554696d656c6f63,
                    mem[199 len 29]
    require ext_code.size(sub_208362c1Address)
    call sub_208362c1Address.add(uint256 rg1, address rg2, uint16 rg3, bool rg4) with:
         gas gas_remaining wei
        args 0, uint32(stor0), sub_1b711859Address, stor1, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_208362c1Address)
    call sub_208362c1Address.massUpdatePools() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    timelock[2] = 0
}



}
