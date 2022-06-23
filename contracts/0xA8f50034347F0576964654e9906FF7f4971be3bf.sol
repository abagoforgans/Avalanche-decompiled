contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
uint256 stor2;
address stor3;
address stor4;
address stor5;

function sub_772f4427(?) {
    require calldata.size - 4 >= 32
    return bool(stor1[arg1])
}

function owner() {
    return owner
}

function deposit() payable {
  stop
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_6c65ccc6(?) {
    require calldata.size - 4 >= 64
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1[arg1] = uint8(bool(arg2))
}

function withdraw() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if eth.balance(this.address) <= 0:
        revert with 0, 'No balance to withdraw'
    call stor3 with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Withdrawal failed'
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

function flip(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor1[msg.value]) != 1:
        revert with 0, 'Wrong Amount'
    stor2++
    call stor4 with:
       value 300 * msg.value / 10000 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call stor5 with:
       value 25 * msg.value / 10000 wei
         gas 2300 * is_zero(value) wei
    if arg1 == 1:
        if bool(sha3(block.timestamp, msg.sender, stor2 + 1) % 10) != 1:
            emit 0x396dec77: 1, sha3(block.timestamp, msg.sender, stor2 + 1) % 10 << 255, msg.sender, 0
        else:
            if not 9650 * msg.value / 10000:
                call msg.sender with:
                     gas 2300 wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit 0x396dec77: 1, sha3(block.timestamp, msg.sender, stor2 + 1) % 10 << 255, msg.sender, 0
            else:
                if 2 * 9650 * msg.value / 10000 / 9650 * msg.value / 10000 != 2:
                    revert with 0, 'SafeMath: multiplication overflow'
                call msg.sender with:
                   value 2 * 9650 * msg.value / 10000 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit 0x396dec77: 1, sha3(block.timestamp, msg.sender, stor2 + 1) % 10 << 255, msg.sender, 2 * 9650 * msg.value / 10000
    else:
        if bool(sha3(block.timestamp, msg.sender, stor2 + 1) % 10):
            emit 0x396dec77: 0, sha3(block.timestamp, msg.sender, stor2 + 1) % 10 << 255, msg.sender, 0
        else:
            if not 9650 * msg.value / 10000:
                call msg.sender with:
                     gas 2300 wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit 0x396dec77: 0, sha3(block.timestamp, msg.sender, stor2 + 1) % 10 << 255, msg.sender, 0
            else:
                if 2 * 9650 * msg.value / 10000 / 9650 * msg.value / 10000 != 2:
                    revert with 0, 'SafeMath: multiplication overflow'
                call msg.sender with:
                   value 2 * 9650 * msg.value / 10000 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit 0x396dec77: 0, sha3(block.timestamp, msg.sender, stor2 + 1) % 10 << 255, msg.sender, 2 * 9650 * msg.value / 10000
}



}
