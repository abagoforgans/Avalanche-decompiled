contract main {




// =====================  Runtime code  =====================


const getTimestamp = block.timestamp


address owner;
address dappAddress;
address dataAddress;
address stor5;
uint256 stor6;
uint256 stor7;
uint256 sub_7741f878;
uint256 opening;
uint8 stor10;
uint256 stor10;

function getOpening() {
    return opening
}

function data() {
    return dataAddress
}

function sub_7741f878(?) {
    return sub_7741f878
}

function owner() {
    return owner
}

function dapp() {
    return dappAddress
}

function _fallback() payable {
    revert
}

function sub_f713eae7(?) {
    if stor6 and 10^18 > -1 / stor6:
        revert with 'NH{q', 17
    return (10^18 * stor6 / 2000 * 10^18)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_90088117(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint256(stor10) = not bool(uint8(stor10)) or Mask(248, 8, uint256(stor10))
    return bool(uint8(stor10))
}

function withdraw() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call stor5 with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Failed to send Ether'
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_cb4e7502(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require sub_7741f878 < 60
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You have to mint at least 1 node and 3 nodes max.'
    if arg1 > 3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You have to mint at least 1 node and 3 nodes max.'
    if stor6 and 10^18 > -1 / stor6:
        revert with 'NH{q', 17
    if 10^18 * stor6 / 2000 * 10^18 and arg1 > -1 / 10^18 * stor6 / 2000 * 10^18:
        revert with 'NH{q', 17
    require msg.value >= 10^18 * stor6 / 2000 * 10^18 * arg1
    if bool(uint8(stor10)) != 1:
        revert with 0, 'Presale closed.'
    if block.timestamp < opening:
        revert with 0, 'prout'
    idx = 0
    while idx < arg1:
        mem[96] = 0x11bd77fe00000000000000000000000000000000000000000000000000000000
        mem[100] = msg.sender
        mem[132] = 1
        require ext_code.size(dappAddress)
        call dappAddress.addNode(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if sub_7741f878 > -2:
            revert with 'NH{q', 17
        sub_7741f878++
        if sub_7741f878 == 40:
            if block.timestamp > -301:
                revert with 'NH{q', 17
            opening = block.timestamp + 300
            stor6 = 100 * 10^18
        else:
            if sub_7741f878 == stor7:
                if block.timestamp > -301:
                    revert with 'NH{q', 17
                opening = block.timestamp + 300
                if stor7 > -11:
                    revert with 'NH{q', 17
                stor7 += 10
                if stor6 > -20000000000000000001:
                    revert with 'NH{q', 17
                stor6 += 20 * 10^18
        if idx > -2:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
