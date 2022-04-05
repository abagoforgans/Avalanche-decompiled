contract main {




// =====================  Runtime code  =====================


const name = 'Polarfox Reward Token', 0

const totalSupply = 500000 * 10^18

const decimals = 18

const symbol = 'rPFX', 0


mapping of uint128 allowance;
mapping of uint128 balanceOf;

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 == -1:
        allowance[msg.sender][address(arg1)] = test266151307()
        emit Approval(test266151307(), msg.sender, arg1);
    else:
        if arg2 >= 0x1000000000000000000000000:
            revert with 0, 32, 37, 0xfe725046583a3a617070726f76653a20616d6f756e74206578636565647320393620626974, mem[165 len 27] >> 40, 0
        allowance[msg.sender][address(arg1)] = Mask(96, 0, arg2)
        emit Approval(Mask(96, 0, arg2), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 >= 0x1000000000000000000000000:
        revert with 0, 32, 38, 0x73725046583a3a7472616e736665723a20616d6f756e74206578636565647320393620626974, mem[166 len 26] >> 48, 0
    if not msg.sender:
        revert with 0, 'rPFX::_transferTokens: cannot transfer from the zero address'
    if balanceOf[address(msg.sender)] < Mask(96, 0, arg2):
        revert with 0, 'rPFX::_transferExcluded: transfer amount exceeds balance'
    balanceOf[address(msg.sender)] = Mask(96, 0, balanceOf[address(msg.sender)] - arg2)
    balanceOf[arg1] = Mask(96, 0, arg2 + balanceOf[arg1])
    emit Transfer(Mask(96, 0, arg2), msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if arg3 >= 0x1000000000000000000000000:
        revert with 0, 32, 37, 0xfe725046583a3a617070726f76653a20616d6f756e74206578636565647320393620626974, mem[165 len 27] >> 40, 0
    if arg1 != msg.sender:
        if allowance[address(arg1)][msg.sender] != test266151307():
            if allowance[address(arg1)][msg.sender] < Mask(96, 0, arg3):
                revert with 0, 'rPFX::transferFrom: transfer amount exceeds spender allowance'
            allowance[address(arg1)][address(msg.sender)] = Mask(96, 0, allowance[address(arg1)][msg.sender] - arg3)
            emit Approval(Mask(96, 0, allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender);
    if not arg1:
        revert with 0, 'rPFX::_transferTokens: cannot transfer from the zero address'
    if balanceOf[address(arg1)] < Mask(96, 0, arg3):
        revert with 0, 'rPFX::_transferExcluded: transfer amount exceeds balance'
    balanceOf[address(arg1)] = Mask(96, 0, balanceOf[address(arg1)] - arg3)
    balanceOf[arg2] = Mask(96, 0, arg3 + balanceOf[arg2])
    emit Transfer(Mask(96, 0, arg3), arg1, arg2);
    return 1
}



}
